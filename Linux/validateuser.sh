#!/bin/bash

# Prompt user to enter username
read -p "Enter your username: " username

# Check if the username is not empty
if [ -z "$username" ]; then
    echo "Username cannot be empty."
    exit 1
fi

# Check if the username consists only of strings
if [[ ! "$username" =~ ^[A-Za-z]+$ ]]; then
    echo "Username must contain only letters."
    exit 1
fi

# Check if the username is in uppercase
if [[ ! "$username" == "${username^^}" ]]; then
    echo "Username must be in UPPERCASE."
    exit 1
fi

# Check if the username contains any spaces
if [[ "$username" == " " ]]; then
    echo "Username cannot contain spaces."
    exit 1
fi

# If all checks pass, display a success message
echo "Username '$username' is valid."
