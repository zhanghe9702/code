#include <iostream>
#include <cstring>
using namespace std;

class Mystring {
private:
    char* str;
public:
    Mystring(const char *orig) {
        str = new char[strlen(orig) + 1];
        if( str ) {
           strcpy(str, orig);
        }
    };
    virtual ~Mystring() {
        delete [] str;
    };
    Mystring(const Mystring& orig) {
       str = new char[strlen(orig.str) + 1];
       if (str) {
           strcpy(str, orig.str);
       }
    };
    bool operator==(Mystring& orig) {
        if(orig.str == orig.str) {
            return true;
        } else {
            return false;
        }
    }
    Mystring& operator=(Mystring& orig) {
        if(orig == *this) {
            return orig;
        }
        delete [] str;
        str = new char[strlen(orig.str) + 1];
        strcpy(str, orig.str);
        return *this;
    };
    friend ostream& operator<<(ostream& o, Mystring& me) {
        o << me.str << endl; 
        return o;
    }

};

int main(int argc, char const *argv[])
{
    Mystring a("zhang");
    Mystring b = a;
    cout << "copy:" << b << "orig:" << a;

    return 0;
}
