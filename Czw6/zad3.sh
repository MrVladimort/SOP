#!/bin/bash

if [ $# -eq 0 ] ;
 then
 echo Brak argumentu
else
silnia=1

if [ $# -eq 1 ] ; then
 zm=$1
 while [ $zm -gt 1 ]
 do
 echo Wymnazam przez $zm
silnia=$[silnia*$[zm--]]
 done
 
fi
echo $silnia
fi
