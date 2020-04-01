#!/bin/bash

docker pull jenkins/jenkins:lts
docker build -t vdem/jenkins https://gist.github.com/b07c900ce0aa99eac3e77de8b0d224f0.git
docker stop jenkins
docker rm jenkins
docker run -d -v ./jenkins_home:/var/jenkins_home -p 9595:8080 -p 50000:50000 --name jenkins --restart unless-stopped vdem/jenkins:latest

