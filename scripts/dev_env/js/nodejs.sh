#!/bin/bash -eu

apt -y install nodejs npm

npm cache clean
npm -g install n

n stable
ln -sf /usr/local/bin/node /usr/bin/node

