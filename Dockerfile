FROM amazoncorretto:17-alpine
WORKDIR /app
COPY target/*.jar app.jar
RUN apk --no-cache add curl git
ENTRYPOINT ["java", "-jar", "app.jar"]