#!/bin/bash
#to find a file in specific directory
#a.script should accept user input for pathand file name
#b.if path not found or empty then script can take default path as /

read -p "Enter path: " path
read -p "Enter filename: " filename

#if path is empty , then /
if [ -z "$path" ];then
	path="/"
fi

#if path is not a directory
if [ ! -d "$path" ];then
	echo "Path not found"
	exit 1
fi

find "$path" -name "$filename"

