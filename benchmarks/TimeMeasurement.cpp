#include "TimeMeasurement.h"
#include <chrono>
#include <iostream>
#include <iomanip>

namespace TimeMeasurement
{
using namespace std;
    

void measure(const function<int()>& f,string s)
{
    auto startT= chrono::system_clock::now();
    f();
    auto endT = chrono::system_clock::now();

    chrono::duration<double> elapsed_seconds = endT-startT;
    
    const int elapsedNS = static_cast<int>(1000000 * elapsed_seconds.count());

    cout << s << " time: " << setw(10) << elapsedNS << "ns" << endl;
}

    
}
