#!/bin/bash


#todo: add or comparisson
read user_answer

if [ "$user_answer" = "Y" ]; then
	echo "YES"
elif [ "$user_answer" = "y" ]; then
	echo "YES"

elif [ "$user_answer" = "N" ]; then
	echo "NO"

elif [ "$user_answer" = "n" ]; then
	echo "NO"
fi
