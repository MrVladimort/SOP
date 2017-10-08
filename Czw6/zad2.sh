#!/bin/bash

read ANS

while [ "$ANS" != "Q" -a "$ANS" != "q" ] ; do

	echo D - disk
	echo P - proces
	echo U - login users
	echo Q - quit

read ANS

case $ANS in
	I|i) uname -a;;
	D|d) df;;
	P|p) ps xjf;;
	U|u) who;;
	Q|q) echo end;;
	*) echo invalid command;;
esac
done