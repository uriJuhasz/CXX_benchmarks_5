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

    try
    {
      cout << " Benchmark 2:" << endl;
      benchmarks::test2();
    }catch(const exception& e)
    {
      cerr << "Error: " << e.what() << endl;
    }

    cout << "===End" << endl;
    return 0;
}
