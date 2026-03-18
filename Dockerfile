# Use lightweight Java 17 (Temurin)
FROM eclipse-temurin:17-jdk-jammy

# Set working directory
WORKDIR /app

# Copy jar file into container
COPY target/user-0.0.1-SNAPSHOT.jar app.jar

# Expose port (Spring Boot runs on 8080)
EXPOSE 8080

# Run application
ENTRYPOINT ["java","-jar","app.jar"]