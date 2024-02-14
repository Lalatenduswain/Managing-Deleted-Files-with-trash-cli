#!/bin/bash

# Get public IP
public_ip=$(curl -s https://api.ipify.org)

# Get private IP
private_ip=$(hostname -I)

# Get hostname
hostname=$(hostname)

echo "Public IP: $public_ip"
echo "Private IP: $private_ip"
echo "Hostname: $hostname"

# Triple confirmation prompt before executing rm -rf
echo "Are you sure you want to delete these files/directories?"
echo "This action is irreversible. Type 'yes' three times to proceed, or anything else to cancel: "

read -p "First confirmation: " confirmation1
read -p "Second confirmation: " confirmation2
read -p "Third confirmation: " confirmation3

if [ "$confirmation1" == "yes" ] && [ "$confirmation2" == "yes" ] && [ "$confirmation3" == "yes" ]; then
    echo "Proceeding with deletion..."
    # Use trash command instead of rm to move files to trash
    trash "$@"
else
    echo "Deletion canceled."
fi
