FROM thimico/jre7
MAINTAINER thimico
ENV JENKINS_HOME /opt/jenkins
ADD http://mirrors.jenkins-ci.org/war/latest/jenkins.war /srv/jenkins.war
VOLUME /opt/jenkins
EXPOSE 8080/tcp 22/tcp
WORKDIR /tmp
CMD ["java","-jar","/srv/jenkins.war -Djava.awt.headless=true"]