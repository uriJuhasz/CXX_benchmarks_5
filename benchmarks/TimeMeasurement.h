#ifndef TIME_MEASUREMENT__CXX
#define TIME_MEASUREMENT__CXX

#include <string>
#include <functional>

namespace TimeMeasurement
{
using std::string;
using std::function;
    
void measure(const function<int()>& f,string s);
    
}

#endif
