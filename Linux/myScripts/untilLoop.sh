#!/bin/bash
count=1

count=1

until [ $count -gt 5 ]
do
  echo $count
  let count=count+1
done
#--------------------------
# the same result of 
for count in {1..5}
do 
  echo $count
done
#--------------------------
count=1
while [ $count -le 5 ]
do
  echo $count
  let count=count+1
done
