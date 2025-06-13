#!/bin/bash
#to find all files end with .java in a directory
#run a loop witch count of files found
#if files found filter only last 10 days
#delete files last 10 days

read -p "Enter directory to search: " path

if [ -z "$path" ];then
	path='.'
fi

if [ ! -d "$path" ];then
	echo "Directory not found"
	exit 1
fi

files=$(find "$path" -type f -name "*.java")
count=$(echo "$files" | wc -l)
echo "Total .java files: $count"

recent_files=$(find "$path" -name "*.java" -mtime -10)

if [ -z "$recent_files" ];then
	echo "No .java files modified in last 10 days:"
else
	echo "Files modified in last 10 days:"
	echo "$recent_files"
	
	echo "$recent_files" | xargs -r rm -f
	echo "Deleted files modified in last 10 days."
fi

