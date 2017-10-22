#include "Benchmarks.h"
#include "TimeMeasurement.h"

#include <memory>
#include <vector>
#include <map>
#include <unordered_map>
#include <experimental/optional>
#include <cassert>

#include <iostream>
//#include <optional>

namespace benchmarks
{
    using namespace std;
    using namespace std::experimental;
    using std::experimental::optional;
    
    constexpr int numElements = 100000;
    constexpr int numReads    = 400000;
    
    template<class C> class StdMapWrapper
    {
    private:
      C& m;
    public:
      inline StdMapWrapper(C& m) : m(m) {}
      
      typedef typename C::key_type K;
      typedef typename C::mapped_type V;
      inline void insert(const K k, const V v)
      {
        m.emplace(k,v);
      }
      inline void insert(const pair<K,V>& p)
      {
        m.emplace(p.first,p.second);
      }
      inline optional<V> lookup(const K k) const
      { 
        typedef typename C::const_iterator CIT;
        const CIT it = m.find(k);
        if (it==m.cend())
          return optional<V>();
        else
          return optional<V>(it->second);
      }
    };
    

    template<template <class,class> class C>int fMap(const vector<pair<int,int>>& inputs)
    {
        typedef C<int,int> M;
        M m;
        for (const auto p : inputs)
          m.insert(p);
        
        int x = 0;
        const auto itEnd = m.cend();
        for (int i=0; i<numReads; ++i)
        {
          const auto it = m.find(i);
          if (it != itEnd)
            x += it->second;
        }
        return x;
    }
    
    template<class M>int fMap2(const vector<pair<int,int>>& inputs, M& m)
    {
        for (const auto p : inputs)
          m.insert(p);
        
        int x = 0;
        for (int i=0; i<numReads; ++i)
        {
          const auto r = m.lookup(i);
          if (r)
            x += *r;
        }
        return x;
    }

    template <class K, class V> using TreeMap = map<K,V>;
    template <class K, class V> using HashMap = unordered_map<K,V>;
    
    
template <class T> class PoolAllocator 
{
private:
  const size_t m_size;
  size_t m_cur;
  T* const m_pool;
public:
  typedef T value_type;
  
  inline explicit PoolAllocator(const size_t initial)
    : m_size(initial)
     ,m_cur(0)
     ,m_pool( static_cast<T*>(malloc(initial * sizeof(T))))
  {
    assert(initial>0);
  }
  
  inline ~PoolAllocator(){ delete m_pool; }
  
  template<class U>inline constexpr PoolAllocator(const PoolAllocator<U>& other) noexcept 
    : m_size(other.size())
     ,m_cur(0)
     ,m_pool(static_cast<T*>(malloc(m_size * sizeof(T))))
     {}
  inline T* allocate(const std::size_t n) 
  {
    //if(n > std::size_t(-1) / sizeof(T)) throw std::bad_alloc();
    assert(m_cur+n <= m_size);
    if (m_cur+n>m_size)
    {
      cerr << "PA[" << this << "]<" << typeid(*this).name() << ">: " 
           << "Allocation error: "
           << "size=" << m_size
           << "cur=" << m_cur
           << "n=" << n
           << endl;
      throw new bad_alloc();
    }
    auto r = m_pool + m_cur;
    m_cur += n;
    return r;
  }
  inline void deallocate(T*, std::size_t) noexcept {  }
  
  size_t size() const {return m_size; }
  size_t cur()  const {return m_cur;  }
};
/*template <class T, class U> bool operator==(const Mallocator<T>&, const Mallocator<U>&) { return true; }
template <class T, class U>bool operator!=(const Mallocator<T>&, const Mallocator<U>&) { return false; }*/


    void test2()
    {
        vector<pair<int,int>> pairs;
        pairs.reserve(numElements);
        for (int i=0; i<numElements; ++i)
          pairs.emplace_back(i,i);
        
        TimeMeasurement::measure([pairs]() -> int { return fMap<TreeMap>(pairs); },"std::map          [  ]");
        TimeMeasurement::measure([pairs]() -> int { return fMap<HashMap>(pairs); },"std::unordered_map[  ]");

        TreeMap<int,int> m1;
        HashMap<int,int> m2;
        StdMapWrapper<TreeMap<int,int>> m1W( m1 );
        StdMapWrapper<HashMap<int,int>> m2W( m2 );
        TimeMeasurement::measure([&]() -> int { return fMap2<StdMapWrapper<TreeMap<int,int>>>(pairs,m1W); },"std::map          [W ]");
        TimeMeasurement::measure([&]() -> int { return fMap2<StdMapWrapper<HashMap<int,int>>>(pairs,m2W); },"std::unordered_map[W ]");
        cout << "Eck.0" << endl;

        typedef pair<const int,int> p;
        typedef PoolAllocator<p> PA1;
  
        typedef map<int,int,less<int>,PA1> TreeMapPA;
        auto pa1 = PA1(numElements*2);
        auto m1PA = TreeMapPA(less<int>(),pa1);
        typedef StdMapWrapper<TreeMapPA> TreeMapPAW;
        TreeMapPAW m1PAW(m1PA);
        
        cout << "Eck.1" << endl;

        typedef unordered_map<int,int,hash<int>,equal_to<int>,PA1> HashMapPA;
        auto pa2 = PA1(numElements*2);
        auto m2PA = HashMapPA(numElements,hash<int>(),equal_to<int>(),pa2);
        typedef StdMapWrapper<HashMapPA> HashMapPAW;
        HashMapPAW m2PAW(m2PA);
        
        cout << "Eck.2" << endl;
        TimeMeasurement::measure([&]() -> int { return fMap2<TreeMapPAW>(pairs,m1PAW); },"std::map          [PA]");
        TimeMeasurement::measure([&]() -> int { return fMap2<HashMapPAW>(pairs,m2PAW); },"std::unordered_map[PA]");
        
    }
}
