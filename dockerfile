FROM openjdk:17-jdk-alpine
MAINTAINER sreekanth
ADD target/springboot-1.0.0.jar  app.jar
CMD ["java","-jar","/home/springboot-1.0.0.jar "]

