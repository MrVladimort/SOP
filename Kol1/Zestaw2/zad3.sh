#!/bin/bash

T=($@)

if [ $# -lt 1 ]; then
   echo NO arguments
   exit
fi

for((i=0;i<$#;i++))
do
    if [ ! -f ${T[$i]} ]; then
       echo "${T[$i]} nie jest plikiem!(("
    else
      kolwo=`grep -io 'Ala' ${T[$i]}|wc -l`
      echo "Slowo: Ala," " Plik: ${T[$i]}, Kolwo: $kolwo"
      SUMA=$[SUMA+kolwo]
    fi
done
echo $SUMA
