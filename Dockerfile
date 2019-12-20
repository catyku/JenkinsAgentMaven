FROM jenkins/jnlp-slave:latest

USER root

ARG USER_HOME_DIR="/jenkins"

RUN apt-get update  -y
RUN apt-get install -y --no-install-recommends tzdata 
ENV TZ Asia/Taipei
#RUN apt-get upgrade  -y
#RUN apt-get install -y software-properties-common
#RUN add-apt-repository ppa:openjdk-r/ppa -y

RUN apt-get install -y maven

USER jenkins 

ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"

COPY settings-docker.xml /usr/share/maven/ref/

USER jenkins 

ENTRYPOINT ["jenkins-slave"]
