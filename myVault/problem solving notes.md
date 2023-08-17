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

This code based 0
```c++
#include <iostream>
#include <vector>

using namespace std;

int main() {
    int n; // number of elements in the array
    cin >> n;

    vector<int> arr(n);//1 2 3 4 5 6 7 8
    for (int i = 0; i < n; ++i) {
        cin >> arr[i];
    }

    vector<int> prefixSum(n);//1 3 6 10 15 21 28 36  
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

code based 1
```cpp
#include <iostream>
#include <vector>

using namespace std;

int main() {
    int n; // number of elements in the array
    cin >> n;

    vector<int> arr(n + 1); // Using 1-based indexing
    for (int i = 1; i <= n; ++i) {
        cin >> arr[i];
    }

    vector<int> prefixSum(n + 1);
    prefixSum[0] = 0; // For 1-based indexing, initialize the prefix sum at index 0 to 0

    // Calculate the prefix sum
    for (int i = 1; i <= n; ++i) {
        prefixSum[i] = prefixSum[i - 1] + arr[i];
    }

    // Now you can answer range sum queries using the prefix sum
    int left, right; // left and right indices of the subarray
    cin >> left >> right;

    int rangeSum = prefixSum[right] - prefixSum[left - 1];
    cout << "Sum of elements in the range [" << left << ", " << right << "] is: " << rangeSum << endl;

    return 0;
}

```

# scanf , printf

>[!Note] why use scanf and printf
> why we need to use scanf and printf
> because there  is more faster than cout and cin 
> and you need to know there in language c not cpp
> من الاخر هما اسرع فهتحتاجهم احيانا ف الكود هيسرعوه وهما تبع السي
> تاني حاجه لازم تعرفها هي ان السي مفيهاش string وهتحتاج انك تعمل ارراي من ال char 
> هتشوف ده خلال الكود هيشتغل ازاي 

```cpp
#define _CRT_SECURE_NO_WARNINGS //--> in visual studio code
#include <stdio.h>
#include<iostream>
using namespace std;

int main()
{
	int x, y, n; // --> %d for intger
	scanf("%d%d%d", &n, &x, &y); // --> take variable by refrence 
	long long t;   // --> lld for long long
	scanf("%lld", &t);// this equal cin>>t; put more faster than it

	double q;
	scanf("%Lf", &q);


	char s;
	scanf("%c", &s);

	printf("%Lf %d %lld %c\n", q, x, t, s);

	//scan arrays
	int m;
	char a[10000];

	gets(a); // --> دي بتاخد الاراي كامله كانها سترنج 
	puts(a); // --> مش محتاج اقولك بقا اني دي هتطبعهم 


	scanf("%s", &a); // ahmed --> ااو ممكن تاخدهم بالشكل ده 

	// ahmed mohamed ali 
	int t;
	cin >> t;
	cin.ignore();
	// هي نفسها لو خدتها بالشكل ده 
	scanf("%[^\n]%*c", a); // with spaces cin.igonre()-->Take arr of char 
	cout << a << endl;
	string a1 = a; // هنا كدا احنا خدناها array of char علشان نستفيد من سرعتها 
	//  بعد كدا حطيناها ف استرنج علشان هو افضل ف التعامل 
	
	string ans1 = "asd";
	printf("%s\n", ans1.c_str());


	for (int i = 0; i < 5; i++){
		scanf("%d", &a[i]); // x y 
		scanf("%d", a + i);
	}
	for (int i = 0; i<5; i++)
		printf("%d ", a[i]);

	int array[5][5];
	int i, k;
	m = 5;
	for (i = 0; i < m; i++){
		for (k = 0; k < m; k++){
			scanf("%d", &(array[i][k]));
		}
	}

	for (i = 0; i < m; i++){
		for (k = 0; k < m; k++){
			printf("%d ", array[i][k]);
		}
		printf("\n");
	}
	// setprecison  and outbut double
	double test = 4.4;
	printf("%.9lf\n", test); // 4.40000000
    // دي هي نفسها بتاعه سيتبريسيشن بس اسهل واسرع
    //  بتكتب . وبعدها الرقم بتاع عدد الارقام بعد العلامه  بعديها بتكتب نوع 
}
```
# Vector


# Pair 
