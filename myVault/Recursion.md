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
