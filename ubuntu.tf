#! /bin/bash

sudo apt-get update

sudo apt-get install -y git

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install -y docker-ce

sudo systemctl enable docker
sudo systemctl start docker

sudo apt-get install -y apache2

sudo systemctl enable apache2
sudo systemctl start apache2

sudo systemctl status apache2

echo "Git, Docker, and Apache HTTP Server have been installed and started successfully."

