FROM java:8
MAINTAINER sreekanth
ADD target/springboot-1.0.0.jar springboot-1.0.0.jar 
EXPOSE 8080
CMD java - jar springboot-1.0.0.jar 


