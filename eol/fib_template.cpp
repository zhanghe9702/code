#include <iostream>
using namespace std;
template <int N> class Fib {
public:
    static const int value = Fib<N-1>::value + Fib<N-2>::value;
};

template <> class Fib<0> {
public:
    static const int value = 1;
};
template <> class Fib<1> {
public:
    static const int value = 1;
};

int main(int argc, char const *argv[])
{
    cout << Fib<20>::value << endl;
    return 0;
}
