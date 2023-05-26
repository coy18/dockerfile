#!/bin/bash

# Update the package index
sudo apt-get update && sudo apt-get upgrade -y

# install stress
sudo apt-get install -y stress

# Install the packages required for Docker
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# Add the Docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to the apt sources list
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update the package index again
sudo apt-get update

# Install Docker
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Clone the Dockerfile repository
git clone https://github.com/coy18/dockerfile.git

# Change directory to the repository
cd dockerfile/

# Build the Dockerfile
# sudo docker build -t image_name .

# Run the Dockerfile
# sudo docker run -d -p 80:80 image_name