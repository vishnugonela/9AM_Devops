#!/bin/bash

# Prompt the user to enter the file name

echo "Enter the file name:"
read filename

# Check if the file exists

  if [ ! -f "$filename" ]; then
	
	echo "Error: File '$filename' not found."
    exit 1
fi

# Count the number of words, lines, and characters in the file
num_words=$(wc -w < "$filename")
num_lines=$(wc -l < "$filename")
num_characters=$(wc -m < "$filename")

# Print the details
echo "File details for: $filename"
echo "Number of words: $num_words"
echo "Number of lines: $num_lines"
echo "Number of characters: $num_characters"






