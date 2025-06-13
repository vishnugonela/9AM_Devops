#!/bin/bash
#to print file content details, like no of words ,lines,char. take input from user.
#WC-word count tool 
#< - it avoids printing filename

read -p "Enter file name: " filename

if [[ -f "$filename" ]];then
	echo "Line : $(wc -l  "$filename")"
	echo "words : $(wc -w < "$filename")"
	echo "characters : $(wc -m < "$filename")"
else
	echo "file not found"
fi
