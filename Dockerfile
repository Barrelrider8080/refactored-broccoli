FROM jenkins/jenkins:lts

USER root
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

USER jenkins

RUN jenkins-plugin-cli --plugins prometheus:2.0.0

EXPOSE 8080 50000
