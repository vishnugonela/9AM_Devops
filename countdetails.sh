#!/bin/bash

# Prompt the user to enter the file name
echo "Enter the file name:"
read filename

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "File not found!"
    exit 1
fi

# Count the number of words, lines, and characters
words=$(wc -w < "$filename")
lines=$(wc -l < "$filename")
characters=$(wc -m < "$filename")

# Print the details
echo "Number of words: $words"
echo "Number of lines: $lines"
echo "Number of characters: $characters"
