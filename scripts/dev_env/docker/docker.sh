#!/bin/bash


### Install docker-ce.
apt -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

apt update

apt -y install docker-ce
docker info



### Install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.20.0/docker-compose-`uname -s`-`uname -m` \
	-o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose
docker-compose --version
