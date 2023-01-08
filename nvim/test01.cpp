#include <iostream>
using namespace std;
const int N=10010;

template<class T>
void func01(T& t)
{
    typename T::bar *p;
}

class B
{
public:
    typedef int bar;
};

int myadd(int a,int b)
{
    return a+b;
}

int main()
{
    B b;
    func01(b);
    return 0;
}

