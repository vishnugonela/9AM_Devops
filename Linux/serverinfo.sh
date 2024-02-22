#!/bin/bash

# Print hostname
echo "Hostname: $(hostname)"

# Print operating system details
echo "Operating System: $(uname -a)"

# Print CPU information
echo "CPU Information:"
lscpu | grep "Model name"

# Print memory information
echo "Memory Information:"
free -h

# Print disk usage
echo "Disk Usage:"
df -h
