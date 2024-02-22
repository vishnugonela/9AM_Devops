#!/bin/bash

# Get the top 5 processes consuming the most CPU
top_processes=$(ps -eo pid,%cpu,comm --sort=-%cpu | head -n 6 | tail -n 5)

# Print header
echo "Top 5 Processes by CPU Usage:"

# Iterate through the top processes and print their details
echo "$top_processes" | while read -r pid cpu_usage process_name; do
    echo "Process ID: $pid, CPU Usage: $cpu_usage%, Process Name: $process_name"
done
