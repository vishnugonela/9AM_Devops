#!/bin/bash

# Ask for the directory path
echo "Please enter the directory path:"
read dirpath

# If directory path is empty, set it to root
if [ -z "$dirpath" ]; then
	    dirpath="/"
    fi

    # Check if directory exists
    if [ ! -d "$dirpath" ]; then
	        echo "Directory not found! Using root directory as default."
		    dirpath="/"
	    fi

	    # Ask for the filename
	    echo "Please enter the filename:"
	    read filename

	    # Find the file
	    find "$dirpath" -name "$filename"

