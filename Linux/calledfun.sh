#!/bin/bash

# Define your functions
hello() {
    echo "Hello, world!"
}

add_numbers() {
    local result=$(( $1 + $2 ))
    echo "Result of addition: $result"
}
