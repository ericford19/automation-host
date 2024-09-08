#!/bin/bash
set -e

echo "Starting Arch Linux installation process..."

# Verify network connection
if ! ping -c 1 archlinux.org &> /dev/null; then
    echo "Network connection not available. Please connect and try again."
    exit 1
fi

archinstall --config user_configuration.json --creds user_credentials.json --silent

echo "Installation complete. You can now reboot into your new Arch Linux system."