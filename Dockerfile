FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy the jar file (adjust the name to match your actual jar)
COPY target/template.jar ./template.jar
# Copy OpenTelemetry agent
COPY otel/opentelemetry-javaagent.jar /otel/opentelemetry-javaagent.jar

# Start with OpenTelemetry agent


# Or if you're using Gradle
# COPY build/libs/your-app-name.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-javaagent:/otel/opentelemetry-javaagent.jar", "-jar", "template.jar"]