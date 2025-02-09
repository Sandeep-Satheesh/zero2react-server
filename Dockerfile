# Use an official OpenJDK runtime as a base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/*.jar app.jar

# Expose the application port (default for Spring Boot)
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]