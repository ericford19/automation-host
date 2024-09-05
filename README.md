# Automated-Host: Automated Arch Linux Setup with Hyprdots and Prefect

This repository contains scripts and configurations for automatically setting up an Arch Linux system with Hyprland, Hyprdots, and Prefect.

## Installation

1. Boot into the Arch Linux live environment.
2. Connect to the internet.
3. Run the following commands:

```bash
pacman -Sy git
git clone https://github.com/ericford19/automation-host.git
cd automation-host/scripts
chmod +x install.sh
./install.sh
```

4. Follow the prompts from the installation script.
5. Once the installation is complete, reboot into your new Arch Linux system.

## Post-Installation

After rebooting, log in to your new system. Hyprdots and Prefect should be set up and ready to use.

To start working with Prefect, navigate to the `prefect/` directory and begin creating your flows and tasks.

## Customization

To customize the installation, you can modify the following files:
- `scripts/archinstall_config.json`: Change installation parameters
- `scripts/disk_layout.json`: Modify disk partitioning
- `ansible/playbooks/`: Adjust post-installation setup
- `configs/hyprdots.conf`: Customize Hyprdots configuration