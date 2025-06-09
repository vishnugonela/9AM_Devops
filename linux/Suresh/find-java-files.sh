#!/bin/bash

# Use current directory if no argument is provided
DIR=${1:-.}

# Check if directory exists
if [ ! -d "$DIR" ]; then
    echo "Error: '$DIR' is not a valid directory."
    exit 1
fi

echo "Searching for .java files in: $DIR"
echo "-----------------------------------------"

# Find and list all .java files
find "$DIR" -type f -name "*.java"

echo "-----------------------------------------"
echo "            Search completed."
echo "-----------------------------------------"
