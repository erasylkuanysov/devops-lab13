#!/bin/bash
set -e

sudo useradd -m devuser
sudo groupadd devgroup
sudo usermod -aG devgroup devuser

sudo touch /home/dev_data.txt
sudo chown devuser:devgroup /home/dev_data.txt
sudo chmod 640 /home/dev_data.txt

ls -l /home/dev_data.txt
id devuser
