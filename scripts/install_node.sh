#!/bin/bash

# https://github.com/nodesource/distributions

curl -fsSL https://deb.nodesource.com/setup_20.x -o nodesource_setup.sh
bash nodesource_setup.sh
apt install -y nodejs
node -v

