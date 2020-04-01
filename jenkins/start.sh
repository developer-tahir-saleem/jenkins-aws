#!/bin/bash
# Ask the user for login details
# echo 'Docker Hub login'
# read -p 'Username: ' DOCKER_USERNAME
# read -sp 'Password: ' DOCKER_PASSWORD



# docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
docker build -t jenkins .

docker tag latest tahirghori/jenkins:latest

docker push tahirghori/jenkins:latest

# run docker
# docker pull tahirghori/jenkins:latest

docker run -d -v /opt/jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -p 9595:8080 -p 50000:50000 --name jenkins tahirghori/jenkins

# docker exec -it jenkins /bin/bash

# cat /var/jenkins_home/secrets/initialAdminPassword

# 655bde9a8158445c8684799f68543db6