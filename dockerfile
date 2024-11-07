FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/*.jar app.jar
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
ARG SERVER_PORT
EXPOSE ${SERVER_PORT}
ENTRYPOINT ["java", "-jar", "app.jar"]
