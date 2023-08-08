#include <iostream>
using namespace std;
struct Array
{
    int *A;
    int size;
    int lenght;
};

void insert(Array *arr, int index);
void del();
void append(Array *arr);
void expand(Array *arr); // this function to expand size of array * 2 to capacty
void display(Array arr);

int main()
{

    Array arr;
    cout << "Enter Size Of The Array: ";
    cin >> arr.size;
    arr.A = new int[arr.size];
    cout << "Enter lenght of array: ";

    cin >> arr.lenght;
    for (int i = 0; i < arr.lenght; i++)
        cin >> arr.A[i];
    display(arr);
    cout << "\n";
    cout << "Enter Number To append: ";
    append(&arr);
    cout << arr.lenght << endl;
    display(arr);

    insert(&arr, 2);
    display(arr);
    return 0;
}
void append(Array *arr)
{
    arr->lenght++;
    cin >> arr->A[arr->lenght - 1];
}
void display(Array arr)
{
    for (int i = 0; i < arr.lenght; i++)
        cout << arr.A[i] << " ";
}
void insert(Array *arr, int index)
{
    p:
    if(arr->lenght<arr->size){
    cout << "Enter Number You Wanaa insert: ";
    int x;
    cin >> x;
    for (int i = arr->lenght; i > index; i--)
    {
        arr->A[i] = arr->A[i - 1];
    }
    arr->A[index ] = x;
    arr->lenght++;
    }
    else
    {
        expand(arr);
        goto p;
    }
}
void del()
{

}
void expand(Array *arr)
{
    arr->size = arr->lenght * 2;
    int *arr2 = new int[arr->size];
    for (int i = 0; i < arr->lenght; i++)
    {
        arr2[i] = arr->A[i];
    }
    swap(arr2, arr->A);
    delete[] arr2;
}
