FIrst we will make dir call myScritpts that we will put in it all of scripts 
now create file call  first.sh
```shell 
touch first.sh
```
if you try to execute the file the permission will denied as the file don't have the rights of execution 
we need to run one of this command to make file executable 
```shell 
chmod u+x first.sh 
chmod 7 first.sh
chmod a+x first.sh
```
the first comman give rights to user to execute 
the secend give user all of right -wrx --> write and read and execute 
third give all rights of execute all--> usr and group and other 
if you don't have knowledge of file permissons read this #FilePermission  

you can execute the file by 
```shell 
./first.sh
```
you can write in file by echo > or open the file by any editor i prefer nvim or vim and 
after that you can start to write your script 

```shell 
#!bin/bash
echo Hello Wordld
```
output 
```md
Hello World
```

> [!Note] Note About echo
> First, note that `echo` puts ONE space between its parameters. Put a few spaces between "Hello" and "World". What do you expect the output to be? What about putting a TAB character between them?  
As always with shell programming, try it and see.  
The output is exactly the same! We are calling the `echo` program with two arguments; it doesn't care any more than `cp` does about the gaps in between them. Now modify the code again:

```shell 
#!/bin/sh  
# This is a comment!  
echo "Hello      World"       # This is a comment, too!
```

```md
This time it works. You probably expected that, too, if you have experience of other programming languages. But the key to understanding what is going on with more complex command and shell script, is to understand and be able to explain: WHY?  
`echo` has now been called with just ONE argument - the string "Hello    World". It prints this out exactly.  
The point to understand here is that the shell parses the arguments BEFORE passing them on to the program being called. In this case, it strips the quotes but passes the string as one argument.  
As a final example, type in the following script. Try to predict the outcome before you run it:
```
[first2.sh](https://www.shellscript.sh/eg/first2.sh.txt)
```shell 
#!/bin/sh
# This is a comment!
echo "Hello      World"	      # This is a comment, too!
echo "Hello World"
echo "Hello * World"
echo Hello * World
echo Hello      World
echo "Hello" World
echo Hello "     " World
echo "Hello \"*\" World"
echo `hello` world
echo 'hello' world
```
this link to myScripts in git hub [myScripts](https://github.com/Moosayed1/obsidianRepo/tree/main/Linux/myScripts)
