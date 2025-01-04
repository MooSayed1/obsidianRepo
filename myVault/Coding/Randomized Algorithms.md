
```cpp
#include <bits/stdc++.h>
using namespace std;

void fisherYatesShuffle(vector<int> &arr) {
    srand(time(NULL));
    int n = arr.size();
    for (int i = n - 1; i > 0; i--) {
        int j = rand() % (i + 1);
        swap(arr[i], arr[j]);
    }
}

int partitionFreivald(vector<int>& arr, int l, int h) {
    srand(time(NULL));
    int random = l + rand() % (h - l);
    swap(arr[random], arr[h]);
    
    int pivot = arr[h];
    int i = l - 1;

    for (int j = l; j < h; j++) {
        if (arr[j] <= pivot) {
            i++;
            swap(arr[i], arr[j]);
        }
    }

    swap(arr[i + 1], arr[h]);
    return (i + 1);
}

int partitionKnuth(vector<int>& arr, int l, int h) {
    srand(time(NULL));
    int random = l + rand() % (h - l);
    swap(arr[random], arr[h]);

    int pivot = arr[h];
    int i = l - 1;

    for (int j = l; j < h; j++) {
        if (arr[j] <= pivot) {
            i++;
            swap(arr[i], arr[j]);
        }
    }

    swap(arr[i + 1], arr[h]);
    return (i + 1);
}

void quicksort(vector<int>& arr, int l, int h, int method) {
    if (l < h) {
        int pi;
        if (method == 1)
            pi = partitionFreivald(arr, l, h);
        else
            pi = partitionKnuth(arr, l, h);

        quicksort(arr, l, pi - 1, method);
        quicksort(arr, pi + 1, h, method);
    }
}

void printArray(const vector<int>& arr) {
    for (int i : arr) {
        cout << i << " ";
    }
    cout << endl;
}

int main() {
    vector<int> arr = {12, 9, 7, 15, 10, 4, 23};
    int n = arr.size();

    fisherYatesShuffle(arr);
    quicksort(arr, 0, n - 1, 1);
    printArray(arr);

    fisherYatesShuffle(arr);
    quicksort(arr, 0, n - 1, 2);
    printArray(arr);

    return 0;
}

```


![[Pasted image 20240310011043.png]]