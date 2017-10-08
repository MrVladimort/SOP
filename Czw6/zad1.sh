#!/bin/bash

if [ ! -f $1 ]; then
	echo Niema pliku $1
elif [ ! -s $1 ]; then
	echo Plik pusty
else
	sum = 0
	
pirwszy = true

for linia in `cat $1` 
do
	 if [ $pirwszy = true ]
		 then
		 first=false
		 max=$linia
		 min=$linia
	 fi
	 
	 if [ $line -gt $max ]
		 then
		 max=$linia
	 fi
	 
	 if [ $linia -lt $min ]
		 then
		 min=$linia
	 fi
 ((suma+=line))
done

echo $suma $min $max
fi
