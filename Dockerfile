# Use a base image with JDK 11 pre-installed
FROM adoptopenjdk/openjdk11:alpine-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled Java classes and resources to the container
COPY target/classes /app/classes
COPY target/dependency /app/dependency

# Set the classpath to include the dependency JARs
ENV CLASSPATH /app/classes:/app/dependency/*

# Command to run the Java application
CMD ["java", "com.houarizegai.calculator.App"]
