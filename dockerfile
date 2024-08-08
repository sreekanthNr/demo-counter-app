FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/springboot-1.0.0.jar /app/springboot-1.0.0.jar 

# Make port 8080 available to the world outside this container (optional)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", " springboot-1.0.0.jar "]


