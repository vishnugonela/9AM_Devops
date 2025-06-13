#!/bin/bash
#to accept a string from user ,print no of charcters count with its letter
#fold -w1 = splits the cbar , one per line
#sort | uniq = filter unique char
# 
read -p "Enter a string:" str

for ch in $(echo "$str" | fold -w1 | sort | uniq ); do
	count=$(echo -n "$str" | grep -o "$ch" | wc -l)
	echo "$ch = $count"
done

