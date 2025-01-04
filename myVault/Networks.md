```md
1 - `what` is the differnce between ip address and interface
wifi --> if it wirless
eather net caple--> if you use pysical caple ot connect with internet 

```

> [!Note]-
> network portion and host portion
> 192.168.1.7/24
> the network portion is 192,168,1 and 7 is host portion and /24 is called the prefix

```cpp
if host portion is = 0 the ip address will be network portion 

```

> [!Note]- why range of ip is from 1 to 254
> split to classes
> if prefix = /8 you are in class A
> if prefix = /16 you are in class B
> if prefix = /24 you are in class C
> 254 because the host portion is 8 bits that represint 254 number
> 

>[!bug] very important
> host network have  256 address but you have 254 to use
number 0 reserved to netwrok 255 reserved to prodcast بتروح للكل

```cpp
/24 this mean first 24 bit to network potion theat 
if i need network address 
the key is network portion and host portion are zeros --> مفتاح حل السؤال الي ف الدرايف 
خد بالك الاول من البريفيكس هتحل علي اساسه
```

- what is 3 types of address
   1- network address: used to refer to the whole network
   2- broadcase address: used to send packets to every host in the network 
   3 - host address : used to identify specific host in this network

```cpp
one to one -->  unicast 
one to many --> bradcast

```
what is the types of traffic
```cpp
- what is the difference between broad cast traffic and directed broadcast 
directed broadcast 
2 types
limited --> you withing the local network
directed --> you outside network and you want to send to everybody in the network

```
multicast traffic --> limited to the local network

```cpp
reserved ip addresses
host address--> 0.0.0.0 to (223.255.255.255)
multicast address --> used for multicast add on  --> (224.0.0.0) to(255.255.255.255)
experment address --> used for research not available for hosts --> from (240.0.0.0) to (255.255.255.255)
```

>[!note]
NAT Protocol --> used for convert private IP address to public IP address and vice versa

