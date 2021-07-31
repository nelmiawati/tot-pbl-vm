#!/bin/bash

echo "###"
echo "### install-docker-engine.sh###"
echo "###"

echo "### Uninstall old versions of Docker Engine"
DEBIAN_FRONTEND=noninteractive apt-get -yq remove docker docker-engine docker.io containerd runc

echo "### Set up the repository of Docker Engine"
DEBIAN_FRONTEND=noninteractive apt-get -yq update
DEBIAN_FRONTEND=noninteractive apt-get -yq install apt-transport-https ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "### Install Docker Engine###"
DEBIAN_FRONTEND=noninteractive apt-get -yq update
DEBIAN_FRONTEND=noninteractive apt-get -yq install docker-ce docker-ce-cli containerd.io
docker run hello-world

echo "### Manage Docker as a non-root user"
echo "> Create the docker group"
groupadd docker
echo "> Add your user to the docker group"
usermod -aG docker vagrant
echo "> Log out and log back in so that your group membership is re-evaluated"
newgrp docker
echo "> Verify that you can run docker commands without sudo"
docker run hello-world

echo "### Configure Docker to start on boot"
systemctl enable docker.service
systemctl enable containerd.service

