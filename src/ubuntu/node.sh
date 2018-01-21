#!/bin/bash

set -e
echo "Installing NVM... ⚙️"

sudo apt-get update
sudo apt-get install build-essential libssl-dev -y
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh -o install_nvm.sh
bash install_nvm.sh
rm install_nvm.sh
. ~/.nvm/nvm.sh
. ~/.profile
. ~/.bashrc

echo "NVM installed ✅"
echo "Installing LTS Node... ⚙️"

nvm ls-remote
nvm install --lts
node -v

echo "LTS Node installed ✅"
