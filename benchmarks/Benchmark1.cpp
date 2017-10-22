#include "Benchmarks.h"
#include "TimeMeasurement.h"

#include <memory>

namespace benchmarks
{
    using namespace std;
    
    constexpr int numIterations = 1000000;
    int f1()
    {
        int x = 0;
        for (int i=0; i<numIterations; ++i)
        {
            x = x*i+(x-1);
        }
        return x;
    }
    
    void lll();
    void test1()
    {
        TimeMeasurement::measure(f1,"additions");
//        lll();
    }
    
    
    class C{public: int f(); int x;};
    
//    int sa_test1(const C* p __attribute__((nonnull)))
    int sa_test1(const C* p [[gnu::nonnull]])
    {
        C* const pp = nullptr;
        pp->x++;
        return p->x;
    }
    
    int sa_test2(unique_ptr<C> p [[gnu::nonnull]] )
    {
        unique_ptr<C> p2;
        return p->x + p2->x;
        
    }
    
    void lll()
    {
        sa_test1(nullptr);
        sa_test2(nullptr);
        sa_test2(make_unique<C>());
    }
}
