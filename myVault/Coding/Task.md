# Freivald Algorithm

```cpp

#include <bits/stdc++.h>
using namespace std;

#define N 2

// Function to check if ABx = Cx
int freivald(int a[][N], int b[][N], int c[][N])
{
	// Generate a random vector
	bool r[N];
	for (int i = 0; i < N; i++)
		r[i] = random() % 2;

	int br[N] = { 0 };
	for (int i = 0; i < N; i++)
		for (int j = 0; j < N; j++)
			br[i] = br[i] + b[i][j] * r[j];

	int cr[N] = { 0 };
	for (int i = 0; i < N; i++)
		for (int j = 0; j < N; j++)
			cr[i] = cr[i] + c[i][j] * r[j];

	int axbr[N] = { 0 };
	for (int i = 0; i < N; i++)
		for (int j = 0; j < N; j++)
			axbr[i] = axbr[i] + a[i][j] * br[j];

	for (int i = 0; i < N; i++)
		if (axbr[i] - cr[i] != 0)
			false;

	return true;
}

bool isProduct(int a[][N], int b[][N],
			int c[][N], int k)
{
	for (int i=0; i<k; i++)
		if (freivald(a, b, c) == false)
			return false;
	return true;
}

int main()
{
	int a[N][N] = { { 1, 1 }, { 1, 1 } };
	int b[N][N] = { { 1, 1 }, { 1, 1 } };
	int c[N][N] = { { 2, 2 }, { 2, 2 } };
	int k = 2;
	if (isProduct(a, b, c, k))
		printf("Yes");
	else
		printf("No");
	return 0;
}

```


![[Pasted image 20240407181520.png]]


## Perform Fermat Primality Test

```cpp
#include <cstring>
#include <iostream>
#include <cstdlib>
#define ll long long
using namespace std;
ll modulo(ll base, ll e, ll mod) {
   ll a = 1;
   ll b = base;
   while (e > 0) {
      if (e % 2 == 1)
         a = (a * b) % mod;
         b = (b * b) % mod;
         e = e / 2;
   }
   return a % mod;
}
bool Fermat(ll m, int iterations) {
   if (m == 1) {
      return false;
   }
   for (int i = 0; i < iterations; i++) {
      ll x = rand() % (m - 1) + 1;
      if (modulo(x, m - 1, m) != 1) {
         return false;
      }
   }
   return true;
}
int main() {
   int iteration = 70;
   ll num;
   cout<<"Enter integer to test primality: ";
   cin>>num;
   if (Fermat(num, iteration))
      cout<<num<<" is prime"<<endl;
   else
      cout<<num<<" is not prime"<<endl;
   return 0;
}
```


![[Pasted image 20240407181928.png]]
