#!/bin/bash
#to find your server IPV4 address ,Validate IPV4 assress format only
#filter only IPV6

echo "IPv4 Addresses:"
ip a | grep -w inet | grep -v inet6

echo "IPv6 Addresses:"
ip a | grep inet6

