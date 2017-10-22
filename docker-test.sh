#!/bin/sh
set -e

# Just make sure node and yarn are installed

docker run rabblerouser/node-base node -v
docker run rabblerouser/node-base yarn -v
