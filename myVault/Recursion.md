[Recursion](https://www.geeksforgeeks.org/introduction-to-recursion-data-structure-and-algorithm-tutorials/)

# Head ,Tail and Head 

```cpp
Head Recursion
#include <stdio.h>
void fun(int n)
{
if(n>0)
{
fun(n-1);
printf("%d ",n);
}
}
int main() {
int x=3;
fun(x);
return 0;
}
```

```cpp
Tail Recursion
#include <stdio.h>
void fun(int n)
{
if(n>0)
{
printf("%d ",n);
fun(n-1);
}
}
int main() {
int x=3;fun(x);
return 0;
}
```

```cpp
Tree Recursion
#include <stdio.h>
void fun(int n)
{
if(n>0)
{
printf("%d ",n);
fun(n-1);
fun(n-1);
}
}
int main() {
fun(3);
return 0;
}
```

# Static and Global Variables in Recusion 

```cpp
Static Variables in Recursion
#include <stdio.h>
int fun(int n)
{
static int x=0;
if(n>0)
{
x++;
return fun(n-1)+x;
}
return 0;
}
int main() {
int r;
r=fun(5);
printf("%d\n",r);
r=fun(5);
printf("%d\n",r);
return 0;
}
```

```c
Global Variabels in Recursion
#include <stdio.h>
int x=0;
int fun(int n)
{
if(n>0)
{x++;
return fun(n-1)+x;
}
return 0;
}
int main() {
int r;
r=fun(5);
printf("%d\n",r);
r=fun(5);
printf("%d\n",r);
return 0;
}
```
# 
```cpp
Indirect Recursion
#include <stdio.h>
void funB(int n);
void funA(int n)
{
if(n>0)
{
printf("%d ",n);
funB(n-1);
}
}
void funB(int n)
{
if(n>1)
{
printf("%d ",n);
funA(n/2);
}
}
int main()
{
funA(20);
return 0;
}
```

```cpp 
Nested Recursion
#include <stdio.h>
int fun(int n)
{
if(n>100)
return n-10;
return fun(fun(n+11));
}
int main()
{
int r;
r=fun(95);
printf("%d\n",r);
return 0;
}
```
# sum and factorial and power

```cpp
Sum of N natural numbers
int sum(int n)
{
if(n==0)
return 0;
return sum(n-1)+n;
}
int Isum(int n)
{
int s=0,i;
for(i=1;i<=n;i++)
s=s+i;
return s;
}
int main()
{
int r=sum(5);
printf("%d ",r);
return 0;
}
```

```cpp
Factorial of N
int fact(int n)
{
if(n==0)
return 1;
return fact(n-1)*n;
}
int Ifact(int n)
{
int f=1,i;
for(i=1;i<=n;i++)
f=f*i;
return f;
}
int main()
{
int r=Ifact(5);
printf("%d ",r);
return 0;
}
```

```cpp
Power Function
int power(int m,int n)// this function take o(n) time
{
if(n==0)
return 1;
return power(m,n-1)*m;
}
int power1(int m,int n)
{
if(n==0)
return 1;
if(n%2==0)
return power1(m*m,n/2);
return m * power1(m*m,(n-1)/2);
}// this function is faster than the first one that take less number of multipl
int main()
{
int r=power1(9,3);
printf("%d ",r);
return 0;
}
```

