#!/bin/bash

# Use current directory if no argument is given
DIR=${1:-.}

# Check if the directory exists
if [ ! -d "$DIR" ]; then
    echo "Error: '$DIR' is not a valid directory."
    exit 1
fi

echo "Searching for .java files in: $DIR"
echo "-----------------------------------------"

# Initialize counter
count=0

# Loop through all .java files
while IFS= read -r -d '' file; do
    echo "$file"
    ((count++))
done < <(find "$DIR" -type f -name "*.java" -print0)

echo "-----------------------------------------"
echo "      Total .java files found: $count"
echo "------------------------------------------"

