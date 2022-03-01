#!/bin/bash
#Autor: Gildas
#Description:script for installation of snarqube server
#Date:28-feb 2022


echo "Installation of snarqube below please be patient..."
echo
sleep 2
echo "please let's install java"
 sudo yum update -y
 sudo yum install java-11-openjdk-devel -y

 sudo yum install java-11-openjdk -y
sleep 2
echo
echo "let'Download SonarQube latest versions"

cd /opt

 sudo yum install wget -y

 sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
sleep 2
echo
echo "let install Extract packages"
sudo yum install unzip -y
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sleep
echo
echo "final steps"
 sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

 cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
./sonar.sh start

echo "Installation done successfully thank"
