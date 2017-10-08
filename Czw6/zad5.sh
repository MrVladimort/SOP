#!/bin/bash
F1="a"
F2="b"
if [ $1 -eq 1 ]; then
echo a
exit
fi
for ((fib=0;fib<$1;fib++))
do
TMP=$F1
F1=$F2
F2="$TMP""$F2"
echo $F2
done
