#!/bin/bash
#to accept input from user as their username only.
#it must be 'string' , 'uppercase' , should not contain spaces

read -p "Enter your username: " username

if [[ "$username" =~ ^[A-Z]+$ ]];then
	echo "Valid Uppercase username"
else
	echo "Invalid must be uppercase with no spaces."
fi

