#!/bin/bash

# Get all IP addresses associated with the server
all_ips=$(hostname -I)

# Initialize variables for IPv4 and IPv6 addresses
ipv4_address=""
ipv6_addresses=""

# Loop through each IP address
for ip in $all_ips; do
    # Validate the IPv4 address format
    if [[ $ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        ipv4_address=$ip
    # Filter out IPv6 addresses
    elif [[ $ip =~ ^[0-9a-fA-F:]+$ ]]; then
        ipv6_addresses+=" $ip"
    fi
done

# Check if IPv4 address is found
if [ -n "$ipv4_address" ]; then
    echo "IPv4 Address: $ipv4_address"
else
    echo "Error: IPv4 address not found"
fi

# Print IPv6 addresses if any
if [ -n "$ipv6_addresses" ]; then
    echo "IPv6 Addresses:$ipv6_addresses"
else
    echo "No IPv6 addresses found"

fi
