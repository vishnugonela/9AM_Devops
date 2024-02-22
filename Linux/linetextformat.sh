#!/bin/bash

# Check if the file exists
if [ ! -f "$1" ]; then
    echo "File not found!"
    exit 1
fi

# Initialize a counter
counter=1
# Read the file line by line and reformat the text
while IFS= read -r line; do
    # Format the line with prefix "priya counter)"
    formatted_line="priya $counter) $line"
    echo "$formatted_line"
    ((counter++))  # Increment the counter
done < "$1"


