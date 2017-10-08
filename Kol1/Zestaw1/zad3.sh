#!/bin/bash

T=($@)

if [ $# -lt 2 ]; then
   echo NO arguments
   exit
fi

for((i=1;i<$#;i++))
do
    if [ ! -f ${T[$i]} ]; then
       echo "${T[$i]} nie jest plikiem!(("
    else
      kolwo=`grep -o $1 ${T[$i]}|wc -l`
      echo "Slowo: $1," " Plik: ${T[$i]}, Kolwo: $kolwo"
      SUMA=$[SUMA+kolwo]
    fi
done
echo $SUMA
