#!/bin/bash

set -e
echo "Installing Nginx...⚙️"

sudo apt-get update
sudo apt-get install nginx -y

echo "Nginx installed ✅"
echo "Copying sample Nginx proxy configuration for Nodejs server... ⚙️"

sudo cp ../utilities/nginx/nodeserver /etc/nginx/sites-available

echo "You should change the name of the file and the settings inside the file (if you need) and enable it ℹ️"
echo "Run:"
echo "mv /etc/nginx/sites-available/nodeserver /etc/nginx/sites-available/theNameYouChoose"
echo "nano /etc/nginx/sites-available/theNameYouChoose"
echo "And then enable it"
echo "ln -s /etc/nginx/sites-available/theNameYouChoose /etc/nginx/sites-enabled/theNameYouChoose"

