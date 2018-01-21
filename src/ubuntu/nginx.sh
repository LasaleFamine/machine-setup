#!/bin/bash

set -e
echo "Installing Nginx...⚙️"

sudo apt-get update
sudo apt-get install nginx -y

echo "Nginx installed ✅"