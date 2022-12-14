#!/usr/bin/env sh
set -eu

docker pull empear/codescene
docker stop codescene
#docker rm codescene

docker start codescene || docker run -d -it -p 3003:3003 \
        --name codescene \
        -v codescene:/codescene \
        empear/codescene


docker pull jenkins/jenkins:lts-jdk11
docker stop jenkins
#docker rm jenkins
docker start jenkins || docker run -p 5000:8080 -p 50000:50000 --restart=on-failure --name jenkins -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk11