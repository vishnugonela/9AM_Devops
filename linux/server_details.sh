#!/bin/bash

echo "===Server Details==="

echo "Kernel Version"
uname -r
echo

echo "CPU info"
lscpu | grep "Model Name" | head -1
echo

echo "Memory Usage:"
free -h | grep Mem
echo

echo "Disk Space:"
df -h --total | grep total
