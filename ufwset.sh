#!/bin/bash

# Update package lists
sudo apt update

# Install UFW
sudo apt install -y ufw

# Enable UFW
sudo ufw enable

# Set default policies to deny all incoming and allow all outgoing traffic
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow specific ports
sudo ufw allow ssh     # Allow SSH (port 22)
sudo ufw allow telnet  # Allow Telnet (port 23)
sudo ufw allow http    # Allow HTTP (port 80)
sudo ufw allow https   # Allow HTTPS (port 443)
sudo ufw allow 1000:2000/tcp  # Allow a range of TCP ports (1000-2000)

# Rate limit SSH to prevent brute-force attacks
sudo ufw limit ssh/tcp

# Allow traffic from a specific IP address (example IP: 192.168.1.100)
# sudo ufw allow from 192.168.1.100

# Allow traffic from a specific IP address to a specific port (example IP: 192.168.1.100 to port 22)
# sudo ufw allow from 192.168.1.100 to any port 22

# Allow traffic to a specific network interface (example interface: eth0, port: 80)
# sudo ufw allow in on eth0 to any port 80

# Deny traffic from a specific IP address (example IP: 203.0.113.0)
# sudo ufw deny from 203.0.113.0

# Allow traffic from a specific subnet (example subnet: 192.168.0.0/24)
# sudo ufw allow from 192.168.0.0/24

# Reject traffic to a specific port (example port: 25)
# sudo ufw reject to any port 25

# Enable UFW logging
sudo ufw logging on

# Set UFW logging level to high for detailed information
sudo ufw logging high

# Check UFW status and rules
sudo ufw status verbose

# Check UFW rules with numbered list
sudo ufw status numbered

# Example command to delete a specific rule by number (example: rule number 6)
# sudo ufw delete 6
