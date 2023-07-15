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
if you don't have knowledge of file permissons read about #FilePermission  

you can execute the file by 
```shell 
./first.sh
```
you can write in file by echo > or open the file by any editor i prefer nvim or vim and 
after that you can start to write your script 

```shell 
#!bin/bash
echo Hello Wordld
echo hello         world
```
output 
```md
Hello World
hello world
```

> [!Note] Note About the last example
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
echo "Hello "*" World"
echo 'hello' world
```


>[!hint]- Answers
```md
Hello      World
Hello World
Hello * World
Hello first2.sh first.sh World
Hello World
Hello World
Hello       World
Hello * World
hello world
```


this link to myScripts in git hub [myScripts](https://github.com/Moosayed1/obsidianRepo/tree/main/Linux/myScripts)


# 2- Variabels 
>[!Note]
>if i write $ before command ,this is in terminal 

you can read the toutoral to variable [Variabels](https://www.shellscript.sh/variables1.html)
and this is summary to it 
i suppose to read totorual of this 
>[!Note]
>that there must be no spaces around the "`=`" sign: `VAR=value` works; 
>`VAR = value` doesn't work.

```shell
#!/bin/sh  
echo "What is your name?"  
read USER_NAMEecho "Hello $USER_NAME"  
echo "I will create you a file called $USER_NAME_file"  
touch $USER_NAME_file
```

```md
Think about what result you would expect. For example, if you enter "steve" as your USER_NAME, should the script create `steve_file`?  
Actually, no. This will cause an error unless there is a variable called `USER_NAME_file`. The shell does not know where the variable ends and the rest starts. How can we define this?  
The answer is, that we enclose the variable itself in _curly brackets_:
```

```shell
#!/bin/sh  
echo "What is your name?"  
read USER_NAMEecho "Hello $USER_NAME"  
echo "I will create you a file called ${USER_NAME}_file"  
touch "${USER_NAME}_file"
```

```shell
The shell now knows that we are referring to the variable `USER_NAME` and that we want it suffixed with "_file". This can be the downfall of many a new shell script programmer, as the source of the problem can be difficult to track down.

Also note the quotes around `"${USER_NAME}_file"` - if the user entered "Steve Parker" (note the space) then without the quotes, the arguments passed to `touch` would be `Steve` and `Parker_file` - that is, we'd effectively be saying `touch Steve Parker_file`, which is two files to be `touch`ed, not one. The quotes avoid this. 
```

```shell
The first set of variables we will look at are `$0 .. $9` and `$#`.  
The variable `$0` is the _basename_ of the program as it was called.  
`$1 .. $9` are the first 9 additional parameters the script was called with.  
The variable `$@` is all parameters `$1 .. whatever`. The variable `$*`, is similar, but does not preserve any whitespace, and quoting, so "File with spaces" becomes "File" "with" "spaces". This is similar to the `echo` stuff we looked at in [A First Script](https://www.shellscript.sh/first.html). As a general rule, use `$@` and avoid `$*`.  
`$#` is the number of parameters the script was called with.
```

```shell
#!/bin/sh
echo "I was called with $# parameters"
echo "My name is $0"
echo "My first parameter is $1"
echo "My second parameter is $2"
echo "All parameters are $@"
```

```txt
first case

$ /home/mohamed/var3.sh
# Ouput
I was called with 0 parameters
My name is /home/mohamed/var3.sh
My first parameter is
My second parameter is    
All parameters are 
$
```

```txt
second case

$ ./var3.sh hello world earth
# Ouput
I was called with 3 parameters
My name is ./var3.sh
My first parameter is hello
My second parameter is world
All parameters are hello world earth
```

# Read about 
#  [Wildcards](https://www.shellscript.sh/wildcards.html) 
# [Escape characters](https://www.shellscript.sh/escape.html) 

# if condition
>[!info] conditons
>- `eq`: equal to
>- `ne`: not equal to
>- `lt`: less than
>- `le`: less than or equal to
>- `gt`: greater than
>- `ge`: greater than or equal to
>- `z`: string is empty
-> `n`: string is not empty
>- `!`: logical NOT
>- `&&`: logical AND
>- `||`: logical OR

```shell
-e --> file exist
-z --> string empty
-x --> file have rights of exectue
if[ -e NameOfFile]
```

```shell
$ echo * 
# this will print all files in directory
```
syntax of if ..then..else is : 
```shell
if [ ... ]
then
  # if-code
else
  # else-code
fi

```

```shell
Note that `fi` is `if` backwards! This is used again later with [case](https://www.shellscript.sh/case.html) and `esac`.  
Also, be aware of the syntax - the "`if [ ... ]`" and the "`then`" commands must be on different lines. Alternatively, the semicolon "`;`" can separate them:

if [ ... ]; then
  # do something
fi
```

```shell
You can also use the `elif`, like this:

if  [ something ]; then
 echo "Something"
 elif [ something_else ]; then
   echo "Something else"
 else
   echo "None of the above"
fi
```

my first efficient bash script 
```shell
#!/bin/bash
INPUTFILE=$1  # Use $1 to get the first command line argument
if [[ $INPUTFILE == *.sh ]]
then  # Add spaces before and after the square brackets
  if [ -e $INPUTFILE ]
  then  # Add spaces after the opening square bracket and before the closing square bracket
    echo "This file already exists."
    exit 1
  else 
    touch $INPUTFILE
    chmod u+x $INPUTFILE
    echo "#!/bin/bash" > $INPUTFILE
    echo "Has Created Successfully :)"
  fi
else 
  echo "This is not a Bash file."
fi
# this code create a bash file and give it execute rights 
# and write !/bin/bash already in the file
```

# switch case 

```shell 
#!/bin/sh

echo "Please talk to me ..."
while true:
do
  read INPUT_STRING
  case $INPUT_STRING in
	hello)
		echo "Hello yourself!"
		;;
	bye)
		echo "See you again!"
		break
		;;
	*)
		echo "Sorry, I don't understand"
		;;
  esac
done
echo 
echo "That's all folks!"
```

# External Programs

External programs are often used within shell scripts; there are a few builtin commands (`echo`, `which`, and `test` are commonly builtin), but many useful commands are actually Unix utilities, such as `tr`, `grep`, `expr` and `cut`.

The backtick (`)is also often associated with external commands. Because of this, we will discuss the backtick first.  
The backtick is used to indicate that the enclosed text is to be executed as a command. This is quite simple to understand. First, use an interactive shell to read your full name from `/etc/passwd`:

```shell
$ grep "^${USER}:" /etc/passwd | cut -d: -f5
Mohamed Elsayed
```

Now we will grab this output into a variable which we can manipulate more easily:

```shell
$ MYNAME=`grep "^${USER}:" /etc/passwd | cut -d: -f5`
$ echo $MYNAME
Mohamed Elsayed
```

# Quick Reference
look at this in a read mood : )

|Command|Description|Example|
|---|---|---|
|&|Run the previous command in the background|`ls &`|
|&&|Logical AND|`if [ "$foo" -ge "0" ] && [ "$foo" -le "9"]`|
|\||Logical OR|`if [ "$foo" -lt "0" ] \| [ "$foo" -gt "9" ]`|
|^|Start of line|`grep "^foo"`|
|$|End of line|`grep "foo$"`|
|=|String equality (cf. -eq)|`if [ "$foo" = "bar" ]`|
|!|Logical NOT|`if [ "$foo" != "bar" ]`|
|$$|PID of current shell|`echo "my PID = $$"`|
|$!|PID of last background command|`ls & echo "PID of ls = $!"`|
|$?|exit status of last command|`ls ; echo "ls returned code $?"`|
|$0|Name of current command (as called)|`echo "I am $0"`|
|$1|Name of current command's first parameter|`echo "My first argument is $1"`|
|$9|Name of current command's ninth parameter|`echo "My ninth argument is $9"`|
|$@|All of current command's parameters (preserving whitespace and quoting)|`echo "My arguments are $@"`|
|$*|All of current command's parameters (not preserving whitespace and quoting)|`echo "My arguments are $*"`|
|-eq|Numeric Equality|`if [ "$foo" -eq "9" ]`|
|-ne|Numeric Inquality|`if [ "$foo" -ne "9" ]`|
|-lt|Less Than|`if [ "$foo" -lt "9" ]`|
|-le|Less Than or Equal|`if [ "$foo" -le "9" ]`|
|-gt|Greater Than|`if [ "$foo" -gt "9" ]`|
|-ge|Greater Than or Equal|`if [ "$foo" -ge "9" ]`|
|-z|String is zero length|`if [ -z "$foo" ]`|
|-n|String is not zero length|`if [ -n "$foo" ]`|
|-nt|Newer Than|`if [ "$file1" -nt "$file2" ]`|
|-d|Is a Directory|`if [ -d /bin ]`|
|-f|Is a File|`if [ -f /bin/ls ]`|
|-r|Is a readable file|`if [ -r /bin/ls ]`|
|-w|Is a writable file|`if [ -w /bin/ls ]`|
|-x|Is an executable file|`if [ -x /bin/ls ]`|
|( ... )|Function definition|`function myfunc() { echo hello`}|