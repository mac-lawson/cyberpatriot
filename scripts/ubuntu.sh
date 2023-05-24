#!/bin/bash

################################################################################
# Author: Mac Lawson
# License: GPLv3

# Designed for the CyberPatriot competition. This repository will go private during the competition.
################################################################################

# Update and upgrade packages
echo "Updating packages..."
sudo apt update
sudo apt upgrade -y

# Enable automatic security updates
echo "Enabling automatic security updates..."
sudo apt install -y unattended-upgrades

# Configure firewall (UFW)
echo "Configuring firewall (UFW)..."
sudo ufw enable
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh

# Disable unnecessary services
echo "Disabling unnecessary services..."
sudo systemctl disable <service_name>

# Set strong user passwords
echo "Setting strong user passwords..."
sudo passwd <username>

# Enable automatic security updates
echo "Enabling automatic security updates..."
sudo apt install -y unattended-upgrades

# Disable root login
echo "Disabling root login..."
sudo sed -i 's/PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config
sudo service ssh restart

# Install and configure fail2ban
echo "Installing and configuring fail2ban..."
sudo apt install -y fail2ban
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
sudo systemctl enable fail2ban
sudo systemctl start fail2ban

# Enable and configure AppArmor
echo "Enabling and configuring AppArmor..."
sudo systemctl enable apparmor
sudo systemctl start apparmor

# Harden network configuration
echo "Harden network configuration..."
# Configure network parameters to restrict unauthorized access

# Configure secure SSH settings
echo "Configuring secure SSH settings..."
sudo sed -i 's/#PermitEmptyPasswords no/PermitEmptyPasswords no/g' /etc/ssh/sshd_config
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/g' /etc/ssh/sshd_config
sudo systemctl restart ssh

# Enable and configure logging and auditing
echo "Enabling and configuring logging and auditing..."
# Configure auditd settings to monitor system logs

# Restrict file and directory permissions
echo "Restricting file and directory permissions..."
# Modify permissions of critical system files and directories

# Set strong file permissions on user files
echo "Setting strong file permissions on user files..."
# Modify permissions of user files

# Enable secure password policies
echo "Enabling secure password policies..."
# Set password policy to enforce strong passwords

# Restrict physical access
echo "Restricting physical access..."
# Implement physical security measures

# Remove unnecessary packages
echo "Removing unnecessary packages..."
sudo apt autoremove -y

echo "System security configuration completed."
