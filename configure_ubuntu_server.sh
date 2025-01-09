#!/usr/bin/env bash
# Bash script that configures an Ubuntu server to ensure localhost resolves to 127.0.0.2 and facebook.com resolves to 8.8.8.8

echo "Warning: This script will change the localhost IP address to 127.0.0.2."
echo "If this machine will continue to be used, please revert localhost back to 127.0.0.1 after running this script."

echo "Updating the /etc/hosts file..."
{
    echo "127.0.0.2   localhost"
    echo "8.8.8.8     facebook.com"
} | sudo tee /etc/hosts > /dev/null

echo "Update complete. Please remember to revert localhost back to 127.0.0.1 if necessary."
