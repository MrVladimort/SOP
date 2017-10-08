#!/bin/bash

for F in $(find . -type f -printf "%h:%f\n"); do
	echo $F
done

IFS=$'\n'

for F in $(find . -type f -printf "%h:%f\n"); do
	echo $F
	KAT=`echo $F|cut -d":" -f1`
	PL=`echo $F|cut -d":" -f2`
	echo Szukam tekstu $PL w pliku $KAT/$PL
	grep -l $PL $KAT/$PL ;
done
unset IFS