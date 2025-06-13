#!/bin/bash
#accept username & password and password must be "alphanumeric" and upper + lower case

read -p "Enter username: " user
read -s -p "Enter password: " pass

if [[ "$pass" =~ [A-Z] ]] && [[ "$pass" =~ [a-z] ]] && [[ "$pass" =~ [0-9] ]];then
	echo " Strong password"
else
	echo "Weak password, must container upper,lower and numeric"
fi

