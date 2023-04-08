#!/bin/bash

#### Autor : Pierre T
#### Date : 04-08-2023

sudo yum update –y

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

sudo yum upgrade -y

## Install Java 11:
sudo amazon-linux-extras install java-openjdk11 -y

## Install Jenkins then Enable the Jenkins service to start at boot :
sudo yum install jenkins -y
sudo systemctl enable jenkins

## Start Jenkins as a service:
sudo systemctl start jenkins

## Display Initial Jenkins Password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword