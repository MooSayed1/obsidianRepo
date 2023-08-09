- iterators —> [**h](https://www.simplilearn.com/tutorials/cpp-tutorial/iterators-in-cpp)ere**
- Ranged loop
- Ranged loop

```cpp
for (type variable : container) {
// code to iterate over container
}
```

Exsample to it

```cpp
int arr[] = {1, 2, 3, 4, 5};
for (int &x : arr) {
std::cout << x << std::endl;
}
```

size of int is => 2e9 
long long => 9e18 
one second eqal => 1e8 

# prefix sum


```c++
#include <iostream>
#include <vector>

using namespace std;

int main() {
    int n; // number of elements in the array
    cin >> n;

    vector<int> arr(n);
    for (int i = 0; i < n; ++i) {
        cin >> arr[i];
    }

    vector<int> prefixSum(n);
    prefixSum[0] = arr[0]; // The first element of prefix sum is the same as the first element of the array

    // Calculate the prefix sum
    for (int i = 1; i < n; ++i) {
        prefixSum[i] = prefixSum[i - 1] + arr[i];
    }

    // Now you can answer range sum queries using the prefix sum
    int left, right; // left and right indices of the subarray
    cin >> left >> right;

    int rangeSum = prefixSum[right] - (left > 0 ? prefixSum[left - 1] : 0);
    cout << "Sum of elements in the range [" << left << ", " << right << "] is: " << rangeSum << endl;

    return 0;
}

```
