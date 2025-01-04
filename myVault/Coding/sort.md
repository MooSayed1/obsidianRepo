```cpp
#include <iostream>
#include <vector>
using namespace std;
void selectionSort(vector<int>& data) {
    for (int i = 0; i < data.size() - 1; ++i) {
        int minIndex = i;
        for (int j = i + 1; j < data.size(); ++j) {
            if (data[j] < data[minIndex]) {
                minIndex = j;
            }
        }
        if (minIndex != i) {
            swap(data[i], data[minIndex]);
        }
    }
}
void bubbleSort(vector<int>& data) {
    for (int i = 0; i < data.size() - 1; ++i) {
    bool flag=0;
        for (int j = 0; j < data.size() - i - 1; ++j) {
            if (data[j] > data[j + 1]) {
                flag=1;
                swap(data[j], data[j + 1]);
            }
            if(!flag)
            break;
        }
    }
}
int main() {
    cout<<"enter the size : ";
    int size;cin>>size;
    vector<int> data(size);
    for(auto&i:data)
        cin>>i;
    cout << "Unsorted data: ";
    for (int item : data) {
        cout << item << " ";
    }
    cout << endl;

    selectionSort(data);
    bubbleSort(data);
    cout << "Sorted data: ";
    for (int item : data) {
        cout << item << " ";
    }
    cout <<endl;

    return 0;
}

```

```cpp
function selectionSort(data: array of integers)
    for i from 0 to size(data) - 2 do
        minIndex = i
        for j from i + 1 to size(data) - 1 do
            if data[j] < data[minIndex] then
                minIndex = j
            end if
        end for
        if minIndex ≠ i then
            swap data[i] with data[minIndex]
        end if
    end for
end 

function bubbleSort(data: array of integers)
    for i from 0 to size(data) - 2 do
        for j from 0 to size(data) - i - 2 do
            if data[j] > data[j + 1] then
                swap data[j] with data[j + 1]
            end if
        end for
    end for
end 
```
result :
![[Pasted image 20240216230156.png]]