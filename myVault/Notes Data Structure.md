- REVISION

Note 1 : this in a new initialize of pointer i don’t know

```cpp
#include <iostream>
#include<algorithm>
using namespace std;
struct Test
{
    int lenght;
    int width;
};
int main()
{
    Test t;
    t.lenght=5;
    t.width=3;
    Test *ptr=&t;

    cout<<(*ptr).lenght<<endl;
    cout<<(*ptr).width<<endl;

    return 0;
}

```

Note 2 —>All of pointer take size 8

```cpp
#include <iostream>
#include<algorithm>
using namespace std;
struct Test
{
    int lenght;
    int width;

};
int main()
{

    int *ptr1;
    char *ptr2;
    float *ptr3;
    double *ptr4;
    Test *ptr5;
    cout<<sizeof(ptr1)<<endl;
    cout<<sizeof(ptr2)<<endl;
    cout<<sizeof(ptr3)<<endl;
    cout<<sizeof(ptr4)<<endl;
    cout<<sizeof(ptr5)<<endl;
    return 0;

}
```

Note 3 —>

```cpp
#include <iostream>
#include<algorithm>
using namespace std;
struct Test{
int lenght;
int width;
char a;
};
int main() {

  Test t;
  cout<<sizeof(t)<<endl;
    return 0;

}
// This code Will Print 12 because it easyer to compiler to store the 4 4 4 
// احسن ما يخزن بالشكل ده ويرجع يخزن 2 لو حاجه تانيه
```

Note 4 —> Array only pass as address like this —> void add(int A[]) address is A and the brackets to point at more that one and point to array and you can use void add(*A) to point in any thing to array or variable but A[] point at array only

5- call by value and call by reference and call by address —> Enter [here](https://pencilprogrammer.com/cpp-tutorials/call-by-value-reference-address/)

6- array as a parameter —> Enter [here](https://www.tutorialspoint.com/cplusplus/cpp_passing_arrays_to_functions.htm)

7- we say previous That Array only pass by address but there is trick you can pass array by value when you made array on struct and pass this struct by value :

Syntax-wise, strictly speaking you _cannot_ pass an array by value in C.
#array_as_ParameterByAddress

```cpp
void func (int* x); /* this is a pointer */

void func (int x[]); /* this is a pointer */

void func (int x[10]); /* this is a pointer */

```

_However_, for the record there is a dirty trick in C that does allow you to pass an array by value in C. Don't try this at home! Because despite this trick, there is still never a reason to pass an array by value.
#array_passByValue

```cpp
typedef struct Array_by_val
{
  int my_array[10];
} ;

void func (Array_by_val x);
```

8- Monolithic program that write all in the main function but Modular program that divide to a functions and in the last call all functions in the main function

9- [Template](https://www.geeksforgeeks.org/templates-cpp/) —> template Function and template class

[here](https://www.geeksforgeeks.org/templates-cpp/)

- _**START IN DATA STRUCTURE**_

[insersion sort](https://www.geeksforgeeks.org/insertion-sort/) has a time complexity of O(n^2), where n is the size of the input array. The constant factor c1 is typically small, but the algorithm's performance degrades quickly as the input size grows. Insertion sort is most efficient when the input size is small.

On the other hand, [merge sort](https://www.geeksforgeeks.org/merge-sort/) has a time complexity of O(n log2 n). The constant factor c2 is typically larger than c1, but the algorithm's performance remains good even as the input size grows. Merge sort is most efficient when the input size is large.

Therefore, depending on the size of the input, one algorithm may be faster than the other. For small input sizes, insertion sort may be faster, while for large input sizes, merge sort may be faster. However, in practice, other factors such as the specific implementation and hardware can also affect the actual performance of these algorithms.

![[Recursion]]

>[!Note] why c++ is zero based index
> This The formula of get address of index
>`address_of_element = address_of_array + (element_index * size_of_each_element)`
>Where:
>- `address_of_array`: The memory address of the first element of the array.
>- `element_index`: The index of the element you want to access (zero-based index).
>- `size_of_each_element`: The size of each element in the array in bytes. This is typically obtained using the `sizeof` operator.
>For example, if you have an integer array `int arr[5];` and you want to find the address of the third element (index 2), you can use the formula:
>`address_of_element = &arr[0] + (2 * sizeof(int));`
>من الاخر لي بيبدا من الصفر لان انا عندس المعاله اصلا المروض تكون 
>مكان اول عنصر + (الاندكس بتاع الارااي ناقص واحد مضروب) ف حجم العنصر الواحد
>فانا بدل ما كل مره افضل اطرح واحد وده هيزود الوقت فهما خلوها تبدا من الصفر بحيث اوفر عمليه وازود سرعه ال compile time


