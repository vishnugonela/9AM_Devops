!/bin/bash
echo "Hostname: $(hostname)"
echo "Operating System: $(uname -a)"

echo "CPU Information:"
lscpu | grep "Model name"
echo "Memory Information:"
free -h

echo "Disk Usage:"
df -h
