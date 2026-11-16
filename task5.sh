#!/bin/bash
set -e

sudo apt-get install -y openssh-server

sudo mkdir -p /etc/ssh/sshd_config.d

echo "PermitRootLogin no" | \
sudo tee /etc/ssh/sshd_config.d/99-lab13.conf

echo "Port 2222" | \
sudo tee -a /etc/ssh/sshd_config.d/99-lab13.conf

sudo sshd -t

sudo ufw allow 2222/tcp

echo "SSH конфигурациясы тексерілді"
