#!/bin/bash


# Directory to list files from
dir="$1"

# Check if directory exists
if [ -d "$dir" ]; then
    echo "Files in directory '$dir':"
    for file in "$dir"/*; do
        if [ -f "$file" ]; then
            echo "$file"
        fi
    done
else
    echo "Directory '$dir' does not exist."
fi

