#!/bin/bash

# Fetch public IP address using a web service
public_ip=$(curl -s ifconfig.me)

# Display the public IP address
echo "Your public IP address is: $public_ip"

