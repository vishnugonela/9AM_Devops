#!/bin/bash

# Prompt user to enter a string
echo "Enter a string:"
read input_string

# Initialize an associative array to store character counts
declare -A char_counts

# Loop through each character in the string
for (( i=0; i<${#input_string}; i++ )); do
    # Get the current character
    char="${input_string:$i:1}"
    
    # Increment the count for this character in the associative array
    (( char_counts[$char]++ ))
done

# Print character counts
echo "Character counts in the string:"
for char in "${!char_counts[@]}"; do
    count="${char_counts[$char]}"
    echo " $char = $count "
done
