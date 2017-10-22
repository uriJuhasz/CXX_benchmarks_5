#include <iostream>
#include <vector>
#include <string>

#include "benchmarks/Benchmarks.h"

using namespace std;

int main(int argc, const char *argv[])
{
    cout << "===Start" << endl;

    cout << "Arguments:" << endl;
    vector<string> args(argv,argv+argc);
    for (const auto& s : args)
        cout << "  " << s << endl;
    
    cout << " Benchmark 1:" << endl;
    benchmarks::test1();

    cout << " Benchmark 2:" << endl;
    benchmarks::test2();

    cout << "===End" << endl;
    return 0;
}
