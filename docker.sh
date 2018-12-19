#!/bin/bash

cat << EOF | sudo tee /etc/yum.repos.d/docker1.repo
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/7/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOF

sudo yum install -y docker-engine
sudo systemctl enable docker
sudo systemctl start docker

sudo usermod -a -G docker vagrant #edit existing system user (vagrant)
