#!/bin/bash

# Function to check if a string contains only alphanumeric characters
is_alphanumeric() {
    [[ "$1" =~ ^[[:alnum:]]+$ ]]
}

# Function to check if a string contains both upper and lower case characters
contains_upper_and_lower() {
    [[ "$1" =~ [[:upper:]] && "$1" =~ [[:lower:]] ]]
}

# Prompt user to input username
echo "Please enter your username: "
read username

# Check if username is a string (contains only alphabetic characters)
if [[ ! "$username" =~ ^[[:alpha:]]+$ ]]; then
    echo "Error: Username must contain only alphabetic characters."
    exit 1
fi

# Prompt user to input password
echo "Please enter your password: "
read -s password  # -s flag hides user input

# Check if password is alphanumeric
if ! is_alphanumeric "$password"; then
    echo "Error: Password must be alphanumeric."
    exit 1
fi

# Check if password contains both upper and lower case characters
if ! contains_upper_and_lower "$password"; then
    echo "Error: Password must contain both upper and lower case characters."
    exit 1
fi

# If all checks pass, display success message
echo "Username: $username"
echo "Password accepted."
