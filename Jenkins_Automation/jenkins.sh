#!/bin/bash

sudo su -

yum update -y
yum install wget -y

# Setting up Jenkins Repository
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

# Installing Java
yum install fontconfig java-11-openjdk
amazon-linux-extras install java-openjdk11

# Installing Jenkins
yum install jenkins -y

# Start and Enabling Jenkins Server
systemctl start jenkins && systemctl enable jenkins
