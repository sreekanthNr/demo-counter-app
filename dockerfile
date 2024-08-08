FROM tomcat:8.0-alpine

LABEL maintainer=”deepak@softwareyoga.com”

ADD /home/srikanthreddynarahari3/.jenkins/workspace/pipeline/target/springboot-1.0.0.jar /usr/local/tomcat/webapps/

EXPOSE 8080
