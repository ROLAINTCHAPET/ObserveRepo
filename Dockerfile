FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy the jar file (adjust the name to match your actual jar)
COPY target/template-0.0.1-SNAPSHOT.jar app.jar
COPY otel/opentelemetry-javaagent.jar /otel/opentelemetry-javaagent.jar


# Or if you're using Gradle
# COPY build/libs/your-app-name.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]