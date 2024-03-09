#!/bin/bash

# Prompt the user for a string
echo "Enter a string:"
read str

# Initialize an associative array to hold character counts
declare -A char_count

# Loop through each character in the string
for (( i=0; i<${#str}; i++ )); do
  char=${str:$i:1}
  # Increment the count for this character
  ((char_count["$char"]++))
done

# Print the counts
for char in "${!char_count[@]}"; do
  echo "$char=${char_count["$char"]}"
done

