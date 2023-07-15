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
you can write in file by > or open the file by any editor i prefer nvim or vim and 
