#!/bin/bash

Tab=($@)

for((i=0;i<$#;i++))
do
 if [ ! -f ${Tab[$i]} ]; then
     echo "Arguments is not valid"
     exit
 fi
done

if [ -d "backup" ]; then
  echo "Delete all files in backup? Y/N"
  read ans
  if [ $ans == 'Y' ]; then
      rm -f backup/*
      cp -f $@ backup/
  elif [ $ans == 'N' ]; then
      for((i=0;i<$#;i++))
      do
        cp -i "${Tab[$i]}" backup/
      done
  fi
elif [ ! -d "backup" ]; then
  echo "backup is'nt a directory"
  exit
fi
