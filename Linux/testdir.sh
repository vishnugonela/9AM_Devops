#!/bin/bash

# Prompt the user to enter the directory path
echo "Enter the directory path(s) separated by space:"
read -a directories

for directory in "${directories[@]}"; do
# Get the number of files in the current directory
file_count=$(ls -l | grep "^-" | wc -l)
done
# Loop based on the number of files
for (( i=1; i<=$file_count; i++ )); do
    echo "Loop iteration $i"
    # Add your loop body here
done
~      
