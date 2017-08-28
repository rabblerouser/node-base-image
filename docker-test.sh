#!/bin/sh
set -e

# Just make sure node and NPM are installed

docker run rabblerouser/node-base node -v
docker run rabblerouser/node-base npm -v
