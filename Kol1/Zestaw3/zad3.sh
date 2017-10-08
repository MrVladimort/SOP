#!/bin/bash

rm liczbowy.txt textowy.txt 2>/dev/null

T=($@)

if [ $# -eq 0 ]; then
   echo NO arguments
   exit
fi

for((i=0;i<$#;i++))
do
    if [ ! -f ${T[$i]} ]; then
       echo "${T[$i]} nie jest plikiem!(("
    else
       grep '^[0-9]' ${T[$i]} >> liczbowy.txt
       grep '^[A-Z]' ${T[$i]} >> textowy.txt
       grep '^[a-z]' ${T[$i]} >> textowy.txt
    fi
done

if [ ! -f textowy.txt -a ! -f liczbowy.txt ]; then
	echo Suma 0
	exit
elif [ ! -f textowy.txt ]; then
	echo "Suma" `wc -l < liczbowy.txt`
	exit	
elif [ ! -f liczbowy.txt ]; then
	echo "Suma"  `wc -l < textowy.txt`
	exit
else
liczbowy=`wc -l < liczbowy.txt`
textowy=`wc -l < textowy.txt`
SUMA=$[liczbowy+textowy]
echo "Suma" $SUMA
fi
