#!/bin/bash

min=`sort -n $1|head -n1`
max=`sort -r $1|head -n1`
suma=$min+$max]
	echo $suma
