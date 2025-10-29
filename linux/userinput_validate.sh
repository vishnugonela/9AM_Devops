#!/bin/bash

echo "Enter Your Favorite Color"
read COLOR

if [ $COLOR == 'red' ]
then
    echo "You are cheerful"
elif [ $COLOR == 'blue' ]
then
    echo "You are joyful"
else
    echo "You are lucky"
fi
