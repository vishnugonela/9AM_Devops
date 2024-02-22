#!/bin/bash

# Prompt user to enter username
read -p "Enter your username: " username

# Prompt user to enter password
read -sp "Enter your password: " password
echo

# Check if the password is not empty
if [ -z "$password" ]; then
    echo "Password cannot be empty."
    exit 1
fi

# Check if the password is alphanumeric
if ! [[ "$password" =~ ^[[:alnum:]]+$ ]]; then
    echo "Password must be alphanumeric."
    exit 1
fi

# Check if the password contains both uppercase and lowercase characters
if ! [[ "$password" = [[:upper:]] && "$password" = [[:lower:]] ]]; then
    echo "Password must contain both uppercase and lowercase characters."
    exit 1
fi

# If all checks pass, display a success message
echo "Username: $username"
echo "Password accepted."
