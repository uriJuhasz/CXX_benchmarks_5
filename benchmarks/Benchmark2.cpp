#include "Benchmarks.h"
#include "TimeMeasurement.h"

#include <memory>
#include <vector>
#include <map>
#include <unordered_map>
#include <experimental/optional>
#include <cassert>
//#include <optional>

namespace benchmarks
{
    using namespace std;
    using namespace std::experimental;
    using std::experimental::optional;
    
    constexpr int numElements = 1000000;
    constexpr int numReads    = 4000000;
    
    template<class C> class StdMapWrapper
    {
    private:
      C m;
    public:
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
    
    template<class M>int fMap2(const vector<pair<int,int>>& inputs)
    {
        M m;
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
  const size_t m_cur;
  T* const m_pool;
public:
  typedef T value_type;
  
  explicit PoolAllocator(const size_t initial)
    : m_size(initial)
     ,m_cur(0)
     ,m_pool( static_cast<T*>(malloc(initial * sizeof(T))))
  {
    assert(initial>0);
  }
  
  template <class U> inline constexpr PoolAllocator(const PoolAllocator<U>&) noexcept {}
  inline T* allocate(const std::size_t n) 
  {
    //if(n > std::size_t(-1) / sizeof(T)) throw std::bad_alloc();
    assert(m_cur+n <= m_size);
    auto r = m_pool + m_cur;
    m_cur += n;
    return r;
  }
  inline void deallocate(T* p, std::size_t) noexcept {  }
};
/*template <class T, class U> bool operator==(const Mallocator<T>&, const Mallocator<U>&) { return true; }
template <class T, class U>bool operator!=(const Mallocator<T>&, const Mallocator<U>&) { return false; }*/


    void test2()
    {
        vector<pair<int,int>> pairs;
        pairs.reserve(numElements);
        for (int i=0; i<numElements; ++i)
          pairs.emplace_back(i,i);
        TimeMeasurement::measure([pairs]() -> int { return fMap<TreeMap>(pairs); },"std::map          ");
        TimeMeasurement::measure([pairs]() -> int { return fMap<HashMap>(pairs); },"std::unordered_map");

        TimeMeasurement::measure([pairs]() -> int { return fMap2<StdMapWrapper<map<int,int>>>          (pairs); },"std::map          ");
        TimeMeasurement::measure([pairs]() -> int { return fMap2<StdMapWrapper<unordered_map<int,int>>>(pairs); },"std::unordered_map");

        auto pa1 = PoolAllocator<pair<int,int>>(numElements*2);
        auto pa2 = PoolAllocator<pair<int,int>>(numElements*2);
        TimeMeasurement::measure([pairs,pa1]() -> int { return fMap2<StdMapWrapper<map<int,int,pa1>>>          (pairs); },"std::map          ");
        TimeMeasurement::measure([pairs,pa2]() -> int { return fMap2<StdMapWrapper<unordered_map<int,int,pa2>>>(pairs); },"std::unordered_map");
    }
}
