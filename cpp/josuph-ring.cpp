#include <list>
#include <iostream>
void josuph_ring(std::list<int> ring, int m) 
{
    std::list<int>::iterator iter = ring.begin();
    while(!ring.empty()) {
        for (; m > 0; --m) {
            ++iter;
        }
        std::cout << *iter << std::endl;
        ring.erase(iter);
    }

}
int main() 
{
    int sample[7] = {1, 2, 3, 4, 5, 6, 7};
    std::list<int> li(sample,sample+7);
    josuph_ring(li, 3);
}
