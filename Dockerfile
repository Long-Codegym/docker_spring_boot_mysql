FROM openjdk:8-jdk-alpine
WORKDIR /app

RUN apk update && apk add mysql-client

COPY build/libs/love_service-0.0.1-SNAPSHOT.jar love_service-0.0.1-SNAPSHOT.jar
COPY src/main/resources/application.properties /app/application.properties

CMD ["java", "-jar", "love_service-0.0.1-SNAPSHOT.jar"]


