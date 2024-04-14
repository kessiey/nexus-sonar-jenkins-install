#!/bin/bash

# Author: YAW OWUSU KESSIE

# Start Docker containers for Nexus and SonarQube

# Run Nexus Docker container
sudo docker run -d -p 8081:8081 sonatype/nexus3:latest 

# Run SonarQube Docker container
sudo docker run -d -p 9000:9000 sonarqube:lts-community
