#!/bin/bash

# Ask for the directory path
echo "Please enter the directory path:"
read dirpath

# Check if directory exists
if [ ! -d "$dirpath" ]; then
	    echo "Directory not found!"
	        exit 1
	fi

	# Find .txt files, filter for last 10 days, and delete
	find "$dirpath" -name "*.txt" -type f -mtime -10 -print 

