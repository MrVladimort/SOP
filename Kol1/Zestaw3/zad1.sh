#!/bin/bash

T=(`ls`)
K=`ls -1|wc -l`
for((i=0;i<$K;i++))
 do
    if ! grep '^[0-9]' ${T[$i]} > /dev/null; then
	echo "Bez liczb" ${T[$i]}
    fi
 done
