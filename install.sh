#!/bin/bash

set -e

echo "Starting Arch Linux installation..."

# Ensure we're in the right directory
cd "$(dirname "$0")"

# Run archinstall with our configuration
archinstall --config user_configuration.json --creds user_credentials.json --silent

# After installation, chroot into the new system to perform post-install tasks
arch-chroot /mnt <<EOF
# Enable NetworkManager
systemctl enable NetworkManager

# Install ansible
pacman -S --noconfirm ansible

# Clone our repository into the new system
git clone https://github.com/your-username/autohost.git /opt/autohost

# Run our ansible playbook
cd /opt/autohost/ansible
ansible-playbook playbooks/main.yml

EOF

echo "Installation complete. You can now reboot into your new Arch Linux system."
