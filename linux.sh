#!/bin/bash

# Update the package list
sudo yum update -y

# Install Git
sudo yum install git -y

# Install Docker
sudo yum install -y \
    yum-utils \
    device-mapper-persistent-data \
    lvm2

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install docker-ce -y

# Enable and start Docker service
sudo systemctl enable docker
sudo systemctl start docker

# Install Apache HTTP Server
sudo yum install httpd -y

# Enable and start Apache service
sudo systemctl enable httpd
sudo systemctl start httpd

# Check the status of Apache service
sudo systemctl status httpd

echo "Git, Docker, and Apache HTTP Server have been installed and started successfully."
