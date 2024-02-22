#!/bin/bash

# Prompt user to input username
echo "Please enter your username: "
read username

# Check if username is a string (contains only alphabetic characters)
if [[ ! "$username" =~ ^[[:alpha:]]+$ ]]; then
    echo "Error: Username must contain only alphabetic characters."
    exit 1
fi

# Check if username is in uppercase
if [[ "$username" != "${username^^}" ]]; then
    echo "Error: Username must be in uppercase."
    exit 1
fi

# Check if username contains spaces
if [[ "$username" == *" "* ]]; then
    echo "Error: Username should not contain spaces."
    exit 1
fi

# If all checks pass, display success message
echo "Username '$username' is valid."
