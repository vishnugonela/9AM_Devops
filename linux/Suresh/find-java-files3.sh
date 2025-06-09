#!/bin/bash

# Use current directory if no argument is given
DIR=${1:-.}

# Confirm the directory exists
if [ ! -d "$DIR" ]; then
    echo "Error: '$DIR' is not a valid directory."
    exit 1
fi

echo "Deleting .java files modified in the last 10 days in: $DIR"
echo "------------------------------------------------------------"

# Initialize counter
count=0

# Find and delete files modified in the last 10 days
while IFS= read -r -d '' file; do
    echo "Deleting: $file"
    rm -f "$file"
    ((count++))
done < <(find "$DIR" -type f -name "*.java" -mtime -10 -print0)

echo "------------------------------------------------------------"
echo "Total .java files deleted: $count"

