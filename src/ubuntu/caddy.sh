#!/bin/bash

set -e

DIR="$(dirname "$0")"

echo "Installing Caddy...⚙️"

sudo apt install -y debian-keyring debian-archive-keyring apt-transport-https
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list
sudo apt update
sudo apt install caddy
sudo service caddy start

echo "Caddy installed and running ✅"

echo "You should edit the config at /etc/caddy/Caddyfile ℹ️"
echo "For example if you want to proxy a Docker container use the following snippet:"
cat << EOF
app.example.me {
  reverse_proxy 127.0.0.1:1234
}


