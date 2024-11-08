
FROM maven:3.8-jdk-11-alpine AS build
WORKDIR /task
COPY pom.xml .
COPY src src
RUN mvn package


FROM openjdk:11-jdk-alpine
COPY --from=build /task/target/task.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]