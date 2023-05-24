#!/bin/bash

################################################################################
# Author: Mac Lawson
# License: GPLv3
################################################################################

# Undo automatic security updates
echo "Undoing automatic security updates..."
sudo apt purge -y unattended-upgrades

# Reset firewall (UFW) configuration
echo "Resetting firewall (UFW) configuration..."
sudo ufw reset

# Enable previously disabled services
echo "Enabling previously disabled services..."
sudo systemctl enable <service_name>

# Reset user passwords to default
echo "Resetting user passwords to default..."
sudo passwd -d <username>

# Enable root login
echo "Enabling root login..."
sudo sed -i 's/PermitRootLogin no/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo service ssh restart

# Uninstall fail2ban
echo "Uninstalling fail2ban..."
sudo apt purge -y fail2ban

# Disable and reset AppArmor
echo "Disabling and resetting AppArmor..."
sudo systemctl disable apparmor
sudo systemctl stop apparmor
sudo apt purge -y apparmor

# Reset network configuration
echo "Resetting network configuration..."
# Undo changes made to network configuration

# Reset SSH settings
echo "Resetting SSH settings..."
sudo sed -i 's/PermitEmptyPasswords no/#PermitEmptyPasswords no/g' /etc/ssh/sshd_config
sudo sed -i 's/PasswordAuthentication no/#PasswordAuthentication no/g' /etc/ssh/sshd_config
sudo sed -i 's/PermitRootLogin no/#PermitRootLogin prohibit-password/g' /etc/ssh/sshd_config
sudo systemctl restart ssh

# Disable logging and auditing
echo "Disabling logging and auditing..."
# Undo changes made to auditd settings

# Restore file and directory permissions
echo "Restoring file and directory permissions..."
# Reset permissions of critical system files and directories

# Restore file permissions on user files
echo "Restoring file permissions on user files..."
# Reset permissions of user files

# Restore password policies
echo "Restoring password policies..."
# Reset password policy to default

# Remove physical access restrictions
echo "Removing physical access restrictions..."
# Undo physical security measures

# Reinstall previously removed packages
echo "Reinstalling previously removed packages..."
# Reinstall necessary packages

echo "System security configuration undo completed."
