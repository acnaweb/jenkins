#!/bin/bash

echo "Installing Jenkins"

# https://www.jenkins.io/doc/book/installing/

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt-get install -y jenkins
sudo usermod -aG docker jenkins

echo "**** Jenkins Admin Password"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

