#!/bin/bash

set -e
echo "Installing Docker...⚙️"

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
apt-cache policy docker-ce
sudo apt-get install -y docker-ce

echo "Docker installed ✅"
echo "Setup Docker permissions for no-sudo... ⚙️"

sudo usermod -aG docker ${USER}
docker --version

echo "Docker permissions setup finished ✅"





