#!/bin/bash

# Prompt user to enter a string (name)
echo "Enter your name:"
read name
# Get the length of the name
name_length=${#name}
# Loop based on the number of characters in the name
for (( i=1; i<=$name_length; i++ )); do
    echo "Loop iteration $i: Hello, $name!"
done
