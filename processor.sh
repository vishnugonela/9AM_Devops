#!/bin/bash

top_processes=$(ps -eo pid,%cpu,comm --sort=-%cpu | head -n 6 | tail -n 5)

echo "Top 5 Processes by CPU Usage:"
echo "$top_processes" | while read -r pid cpu_usage process_name; do
    echo "Process ID: $pid, CPU Usage: $cpu_usage%, Process Name: $process_name"
done
