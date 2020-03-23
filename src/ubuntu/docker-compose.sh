#!/bin/bash

set -e
DOCKER_COMPOSE_VERSION="1.21.2"

echo "Installing docker-compose $DOCKER_COMPOSE_VERSION... ⚙️"
echo "If you want you can change it from the docker-compose.sh file ℹ️"

sudo curl -L https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

echo "docker-compose installed ✅"
