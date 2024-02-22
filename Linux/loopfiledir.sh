#!/bin/bash

# Get the number of files in the current directory
file_count=$(ls -l | grep "^-" | wc -l)

# Loop based on the number of files
for (( i=1; i<=$file_count; i++ )); do
    echo "Loop iteration $i"
    # Add your loop body here
done
