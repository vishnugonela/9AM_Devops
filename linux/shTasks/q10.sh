#!/bin/bash
#to loop based on number of char in string
#nikita loop starts from n to a

read -p "Enter a string: " str
len=${#str}

for ((i=0; i<len; i++)); do
	echo "Char $((i+1)): ${str:$i:1}"
done


