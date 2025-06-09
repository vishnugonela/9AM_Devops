#!/bin/bash

if [[ $UID -ne 0 ]]; then
	echo "This Script requires Root Privilages"

fi

echo " "
echo "===================================================="
echo "Top Running Process Details based of CPU Utilization"
echo "====================================================="
echo " "

ps -eo pid,ppid,user,comm,%cpu,%mem --sort=-%cpu | head -n 10

echo " "
echo " ==============End============="
