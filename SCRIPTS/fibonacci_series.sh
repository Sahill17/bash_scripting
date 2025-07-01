#!/bin/bash

echo "Enter the number of terms: "
read n

a=0
b=1

echo "Fibonacci series:\n"

if [ $n -eq 0 ]; then
	echo "No terms to display"
elif [ $n -eq 1 ]; then
	echo "$a"
elif [ $n -eq 2 ]; then
	echo "$a\n$b"
else
	echo "$a"
	echo "$b"
	for((i=2;i<n;i++)); do
		c=$((a+b))
		echo "$c"
		a=$b
		b=$c
	done
fi
