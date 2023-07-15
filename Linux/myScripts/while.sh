#!/bin/bash
INPUT=""
while [ "$INPUT" != "bye" ] 
do
  echo "Please Enter Something (bye to quit)"
  read INPUT
  echo "You Enter : $INPUT"
done
