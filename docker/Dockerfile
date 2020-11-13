FROM ubuntu:20.04

RUN mkdir /usr/build
WORKDIR /usr/build

RUN apt update && apt -qq -y install curl

RUN curl -O http://apache.crihan.fr/dist/tomcat/tomcat-9/v9.0.39/bin/apache-tomcat-9.0.39.tar.gz
RUN curl -O https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz

RUN tar xzf apache-tomcat-9.0.39.tar.gz
RUN tar xzf openjdk-11.0.2_linux-x64_bin.tar.gz

RUN mv apache-tomcat-9.0.39 /usr/local
RUN mv jdk-11.0.2 /usr/local

RUN ln -s /usr/local/apache-tomcat-9.0.39 /usr/local/tomcat
RUN ln -s /usr/local/jdk-11.0.2           /usr/local/jdk

ADD http://jenkins:jenkinspwd@nexus-srv:8081/repository/maven-releases/fr/eni/mvnbook/banque-web/1.0.0-RELEASE/banque-web-1.0.0-RELEASE.war /usr/local/tomcat/webapps/

ENV CATALINA_HOME /usr/local/tomcat
ENV JAVA_HOME /usr/local/jdk
ENV PATH $CATALINA_HOME/bin:$JAVA_HOME/bin:$PATH

WORKDIR /usr/local/tomcat

EXPOSE 8080

ENTRYPOINT [ "catalina.sh", "run" ]
