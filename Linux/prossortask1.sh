#!/bin/bash

# Get the process ID (PID) and CPU usage of the process consuming the most CPU
pid=$(ps -eo pid,%cpu --sort=-%cpu | awk 'NR==2 {print $1}')
cpu_usage=$(ps -p $pid -o %cpu=)

# Get the process name corresponding to the PID
process_name=$(ps -p $pid -o comm=)

# Print the process details
echo "Process ID: $pid"
echo "Process Name: $process_name"
echo "CPU Usage: $cpu_usage%"
