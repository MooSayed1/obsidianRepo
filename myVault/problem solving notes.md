- iterators —> [here](https://www.simplilearn.com/tutorials/cpp-tutorial/iterators-in-cpp)
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

# cpp Algoritms

 ```c++
 #define _CRT_SECURE_NO_WARNINGS
#include<bits/stdc++.h>
using namespace std;
typedef	long long ll;
#define all(v) ((v).begin()),((v).end())
#define PI(n) ((double)acos(n))
int dx8[8] = { 1, -1, 0, 0, 1, 1, -1, -1 };
int dy8[8] = { 0, 0, 1, -1, 1, -1, 1, -1 };
void file(){
#ifndef ONLINE_JUDGE
	freopen("in.txt", "r", stdin);//freopen("in.txt", "r", stdin);
#else 
#endif
}
void fast(){
	std::ios_base::sync_with_stdio(0); cin.tie(NULL);
}
int main()
{
	int a[5] = { 5, 2, 1, 3, 1 };
	vector<int>v(5);
	v = { 5, 2, 1, 3, 1 };
	string x = "bcdea";
	// array , vector , string
	// sort ,reverse 
	sort(a, a + 5); // sort ( name , name + size )
	sort(a + 3, a + 5); // sort in range [3 , 5)
	reverse(a, a + 5);

	sort(v.begin(), v.end()); // sort  ( name.begin(),name.end())
	sort(v.begin() + 3, v.begin() + 5); // sort in range [3,5)
	reverse(v.begin(), v.end());

	sort(x.begin(), x.end());
	reverse(x.begin(), x.end());

	//Count , binary_search , Lower_bound ,Upper_bound
	
	int  c = count(a, a + 5, 10); // count( name , name + size , value )
	int f  = binary_search(a,a+5,10); // same

	// get index of first value equal or greater than value given
	// array must be sorted 
	sort(a, a + 5);
	sort(v.begin(), v.end()); // 1 2 3 4 4
	int idx1 =  lower_bound(a, a + 5, 5) - a;
	int idx2 = lower_bound(v.begin(),v.end(), 2) - v.begin();
	int idx3 = upper_bound(a, a + 5, 2) - a;
	int idx4 = upper_bound(v.begin(),v.end(), 2) - v.begin();
	cout << idx1 << endl;
	cout << idx2 << endl;
	cout << idx3 << endl;
	cout << idx4 << endl;
	// fill , max_element ,  remove , Is_sorted(c++11)
	
	/*fill(a, a + 5, 10);
	fill(v.begin(), v.end(), 5);*/
	int mx = *max_element(a, a + 5);
	for (int i = 0; i < 5; i++)
		cout << a[i] << " ";
	cout << endl; // 1 2 3 4 5
	remove(a, a + 5, 2); // it not remove actually it replace with last elemnt and decrese size
	remove(v.begin(), v.end(), 5); // remove all values 5 from vector or array

	for(int i = 0; i < 5; i++)
		cout << a[i] << " ";

	bool ok = is_sorted(a, a + 5);

	//next_permutation
	cout << endl;
	x = "abc"; // o(n!)
	do{
		cout << x << endl;
	} while (next_permutation( x.begin() , x.end() ));
}
```

# queue ,deque and priority_queue 

```cpp
#define _CRT_SECURE_NO_WARNINGS
#include<bits/stdc++.h>
#include <bitset>
#include<queue>  // for queue , priority_queue
#include<deque>
using namespace std;
int main()
{
	// STL : Standard Template Library
	// Data , Algorithm , 
	// queue , dequeue , priority_queue


	/*
	queue
	used for ?
	decleration
	push
	pop
	back  // last
	front // first
	size
	empty
	*/
	queue <int> q;

	q.push(1); // o(1)

	q.push(2);

	q.push(3);  // 1 2 3

	 
	//q.pop(); // o(1)

	
	cout << q.front() << endl; // first elemnt 

	cout << q.back() << endl; // last elemnt 

	cout << q.size() << endl;

	cout << q.empty() << endl;

	while (!q.empty()){
		cout << q.front() << " ";
		q.pop();
	}
	
	// dequeue
	/*
	decleration
	push_back
	push_front
	pop_back
	pop_front
	size
	empty
	clear
	*/
	deque<int>de;

	de.push_back(1);  // 3 1 2

	de.push_back(2);  // back add to last 

	de.push_front(3);  // front  add to first

	de.pop_back(); // remove last elemnt 

	de.pop_front(); // remove first elemnt 

	cout << de.size() << endl;

	de.clear(); // clear dequeue

	cout << de.empty() << endl;




	for (int i = 0; i < de.size(); i++){
		cout << de[i] << endl;
	}

	/*
	priority_queue

	decleration
	push
	pop
	top
	size
	empty

	*/

	priority_queue<int> p1;
	priority_queue<int, vector<int>, greater<int> > p2;

	p1.push(1); // 1 2 3 
	
	p1.push(3);

	p1.push(2); // log(n)


	p1.pop(); // log(n)


	p1.top(); // o(1)

	cout << p1.empty() << endl;

	cout << p1.size() << endl;

	while (!p1.empty()){ // --> To pring queue and proirity queue
		cout << p1.top() << endl;
		p1.pop();
	}
	
}
```