#!/bin/bash

# Ask for the username
echo "Please enter your username (UPPERCASE and no spaces):"
read username

# Check if username is a string
if [[ ! $username =~ ^[A-Z]+$ ]]; then
	    echo "Invalid username. Username must be a string, in UPPERCASE, and should not contain spaces."
    else
	        echo "Username is valid."
	fi

