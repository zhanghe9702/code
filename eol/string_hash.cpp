#include <iostream>
#include <string>
#include <list>
#include <random>
#include <functional>
using namespace std;
using charT = char_traits<char>;

int strToHash(const string& str) {
    const int MULT = 131;
    int hash = 0;
    for (const char &c : str) {
        hash = MULT*hash + c;
    }
    return hash;
}
void memmove(char* dst, char*src, size_t len) {
    if(!dst || !src) {
        return;
    }
    if (dst < src || dst > src + len) {
        //no overlap
        while(len--) {
            *dst = *src;
        }
    } else {
        //dst <= src + len
        int overlap = len - (dst - src);
        while(overlap--) {
            dst[--len] = src[--len];
        }
        int noOverLap = len - overlap;
        while(noOverLap--) {
            *dst = *src;
        }
    }
}
auto gen = bind(uniform_int_distribution<>{100}, default_random_engine{});

int main() {
    for(int i=0; i < 100; i++) cout << gen();
    // list<int> lst{2,3,2,3,5};
    // list<int> lst2{1,3,3,3,5};
    // lst.sort();
    // lst.merge(lst2);
    // lst.remove_if([&](auto x){ return x < 3;});
    //lst.emplace(lst.begin(), 45);
    // lst.emplace_front(1);
    // for (auto& elem: lst) {
    //     cout << elem << endl;
    // }
    string s("zhanghe9702");
    cout << "result" << strToHash(s) << endl;
}