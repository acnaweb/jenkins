#!/bin/bash

sh /vagrant/scripts/install_java_17.sh
sh /vagrant/scripts/install_docker.sh
sh /vagrant/scripts/install_jenkins.sh

sudo usermod -aG docker vagrant
sudo usermod -aG docker jenkins



