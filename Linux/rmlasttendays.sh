#!/bin/bash

# Define the directory where you want to search
directory="/home/9AM_Devops"

# Find all files ending with ".java" in the directory and its subdirectories,
# and delete those modified in the last 10 days
find "$directory" -name "*.java" -type f -mtime -10 -exec rm {} \;
