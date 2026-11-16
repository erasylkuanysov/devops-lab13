#!/bin/bash
set -e

sudo apt-get update
sudo apt-get install -y fail2ban

sudo mkdir -p /etc/fail2ban/jail.d

sudo tee /etc/fail2ban/jail.d/sshd.local > /dev/null <<EOF
[sshd]
enabled = true
backend = systemd
bantime = 600
findtime = 600
maxretry = 3
EOF

sudo fail2ban-client -t
