#!/bin/bash
sudo yum install -y wget git httpd java-1.8.0-openjdk java-11-openjdk-devel
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install -y jenkins