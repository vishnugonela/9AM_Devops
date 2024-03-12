#!/bin/bash

# Prompt the user to enter the directory path
echo "Enter the directory path:"
read directory

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Error: Directory '$directory' not found."
    exit 1
fi

# Prompt the user to enter the filename
echo "Enter the filename:"
read filename

# Search for the file in the specified directory
found_files=$(find "$directory" -name "$filename")

# Check if any files are found
if [ -z "$found_files" ]; then
    echo "File '$filename' not found in directory '$directory'."
else
    echo "Found file(s) matching '$filename' in directory '$directory':"
    echo "$found_files"
fi
