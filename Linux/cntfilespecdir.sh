#!/bin/bash

# Prompt the user to enter the directory path
echo "Enter the directory path(s) separated by space:"
read -a directories

# Initialize a variable to store the count of Java files
count=0

# Loop through each directory provided by the user
for directory in "${directories[@]}"; do
    # Find all files ending with ".java" in the directory
    java_files=$(find "$directory" -type f -name "*.java")

# Count the number of Java files found
    num_java_files=$(echo "$java_files" | wc -l)

# Increment the total count
    count=$((count + num_java_files))

 # Print the count of Java files in the current directory
    echo "Number of .java files in '$directory': $num_java_files"
done

# Print the total count of Java files found
echo "Total number of .java files found: $count"
