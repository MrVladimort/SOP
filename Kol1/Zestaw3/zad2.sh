#!/bin/bash

if [ $# -eq 0 ]; then
echo NO argument
exit
fi

if [ -d $1 ]; then
 echo Error: $1 already exist
 exit
elif [ -f $1 ]; then
 echo Error: $1 already exist
 exit
fi

T=(`ls -p ~|grep "/"`)

for((i=0;i<`ls -p ~|grep "/"|wc -l`;i++))
do
  kolwo=`find $HOME/${T[$i]} -name "*.XYZ"|wc -l` 
  echo "Katalog:"$HOME/${T[$i]} " Kolwo:"$kolwo >> $1
done
