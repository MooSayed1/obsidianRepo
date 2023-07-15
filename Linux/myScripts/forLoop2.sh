#!/bin/sh
for ((i=0;i<10;i++))
do
  echo "Looping ... i is set to $i"
done
echo "syntax 2"

for i in {1..10}
do 
  echo "i is : $i"
done
