class copy_sematic
{
public:
    copy_sematic() {
        this->a = 0;
        this->b = 0;
    }
    copy_sematic operator =(copy_sematic a){
        this->a = a.a;
        this->b = a.b;
    }

private:
    int a;
    int b;    /* data */
};
int main ()
{
    copy_sematic a, b, c;
    (a=b)=c;
}
