#!/bin/bash
#print the server details

echo "Name: $(hostname)" 

echo "Memory: "
free -h | grep Mem 

echo "CPU: "
lscpu | grep "Model name"

echo "Disk: "
df -h | grep '^/dev/'

#print running process based on cpu

echo "running process by cpu :"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 5

