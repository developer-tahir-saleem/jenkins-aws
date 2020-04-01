# FROM jenkins/jenkins:2.109-alpine
FROM jenkins/jenkins:lts
MAINTAINER Tahir Saleem <devloper.tahirghoori@gmail.com>

USER root


RUN apt-get update && apt-get install -y maven

# Install Docker
RUN apt-get update && \
apt-get -y install apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common && \
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
    $(lsb_release -cs) \
    stable" && \
apt-get update && \
apt-get -y install docker-ce

RUN apt-get install -y docker-ce

RUN usermod -a -G docker jenkins


RUN apt-get update -y && \
    apt-get install -y python3-pip


# RUN apk add --update python py-pip docker && \
# pip install awscli && \



RUN pip3 install awscli --upgrade

USER jenkins


ENV HOME /home/jenkins

# arrange ssh key
# COPY ~/.ssh/id_rsa $HOME/.ssh/id_rsa

# RUN \
#     chmod 700 $HOME/.ssh &&\
#     chmod 600 $HOME/.ssh/id_rsa 

# RUN chown -R jenkins:jenkins $HOME

# COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
# RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt


# RUN  echo "IdentityFile ~/.ssh/id_rsa" >> /etc/ssh/ssh_config





