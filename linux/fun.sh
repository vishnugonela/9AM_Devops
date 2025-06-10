#!/bin/bash

# Function declration

myfun(){

	for i in {1..3}
	do
		echo "Calling from myfun at $i"
	done
}


fun2(){


	for i in {a..c}
	do
		echo "Calling from fun2 at $i"
	done
}
# Calling function


read -p "Enter your name: " name

if [ "$name" == "Vishnu" ]
then
	echo "User is Valid"
	myfun
else
	echo "User is inValid"
	fun2
fi




