#!/bin/bash
set -e

echo "Starting Arch Linux installation process..."

# Ensure we're in the right directory
cd "$(dirname "$0")"

# Verify network connection
if ! ping -c 1 archlinux.org &> /dev/null; then
    echo "Network connection not available. Please connect and try again."
    exit 1
fi

# Install git and ansible
pacman -Sy --noconfirm git ansible

# Clone our repository
git clone https://github.com/ericford19/automation-host.git /opt/automation-host

# Run the main Ansible playbook
cd /opt/automation-host
ansible-playbook /ansible/playbooks/main.yml

echo "Installation complete. You can now reboot into your new Arch Linux system."