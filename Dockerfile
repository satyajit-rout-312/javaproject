# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app/app.jar
COPY target/*.jar /app/app.jar

# Run the JAR file when the container starts
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
