#!/bin/bash
if [ -z "$1" ]; then
echo "Usage: $0 "
exit 1
fi
sudo nmap -sN -p 20-25 "$1"
