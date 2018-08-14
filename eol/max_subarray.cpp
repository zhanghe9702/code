#include <vector>
#include <iostream>
using namespace std;

int getMaxSubarray(vector<int> &A) {
    int min_sum = 0;
    int max_sum = 0;
    int sum = 0;
    for (size_t i = 0; i < A.size(); i++) {
        sum += A[i];
        if (min_sum > sum)  {
            min_sum = sum;
        }
        if (sum - min_sum > max_sum) {
            max_sum = sum - min_sum;
        }
    }
    return max_sum;
}
int main() {
    vector<int> a = {904, 40, 523, 12, -335, -385, -124, 481, -31};
    int sum  = getMaxSubarray(a);
    cout << sum << endl;
}