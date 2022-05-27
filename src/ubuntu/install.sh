#!/bin/bash

DIR="$(dirname "$0")"

$DIR/node.sh
$DIR/docker.sh
$DIR/docker-compose.sh
$DIR/caddy.sh
