#!/bin/bash
#to loop based on no of files in current directory

count=$(ls -1 | wc -l)
echo "Files : $count"

for i in $count;do
	echo "Loop $i"
done

