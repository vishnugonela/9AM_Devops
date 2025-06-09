#!/bin/bash

echo "System Details"
echo "=============="
echo "Date=$(date)"
echo "Hostname=$(hostname)"
echo

echo "Memory Details"
echo "=============="
free -h
echo

echo "CPU Details"
echo "==========="
top -bn1 | grep "Cpu(s)" | \
	awk '{ print "CPU Load: " $2 "% user, " $4 "% system, " $8 "% ideal" }'
echo

echo "Disk Details"
echo "============"
df -h | grep -v tmpfs
echo

echo "=================End===================="
