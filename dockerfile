FROM anapsix/alpine-java
MAINTAINER sreekanth
ADD target/springboot-1.0.0.jar  /home/springboot-1.0.0.jar 
CMD ["java","-jar","/home/springboot-1.0.0.jar "]

