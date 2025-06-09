#!/bin/bash

File="$1"

if [ ! -f "$File" ]; then
	echo "Error: $File dose not exit"
	exit 1
fi

echo "$File Details are Listed Below:"
echo "=============================="

echo "Line Count 	: $(wc -l < "$File")"
echo "Word Count 	: $(wc -w < "$File")"
echo "Character Count	: $(wc -m < "$File")"

echo "==============End Details==============="
