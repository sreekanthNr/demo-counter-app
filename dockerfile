FROM tomcat:8.0-alpine

LABEL maintainer=”deepak@softwareyoga.com”

ADD target/springboot-1.0.0.jar /usr/local/tomcat/webapps/springboot-1.0.0.jar

EXPOSE 8080



