#!/bin/bash


### Install Mate Desktop.
apt -y install ubuntu-mate-desktop



### Flash
apt -y install pepperflashplugin-nonfree



### Vivaldi
pushd /tmp
wget -q https://downloads.vivaldi.com/stable/vivaldi-stable_1.14.1077.55-1_amd64.deb
dpkg -i vivaldi-stable_1.14.1077.55-1_amd64.deb
popd



### Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
apt update
apt -y install google-chrome-stable
