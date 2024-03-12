#!/bin/bash

# Get all IP addresses associated with the server
all_ips=$(hostname -I)

# Initialize variables for IPv4 addresses
ipv4_addresses=""

# Loop through each IP address
for ip in $all_ips; do
    # Validate the IPv4 address format
    if [[ $ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        ipv4_addresses+=" $ip"
    fi
done

# Check if IPv4 addresses are found
if [ -n "$ipv4_addresses" ]; then
    echo "IPv4 Addresses:$ipv4_addresses"
else
    echo "No IPv4 addresses found"
fi
