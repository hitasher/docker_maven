FROM maven:3.6.3-jdk-11 AS build
COPY ./myapp /myapp
WORKDIR /myapp
RUN mvn clean package

FROM openjdk:11-jre-slim
COPY --from=build /myapp/target/*.jar /myapp.jar
CMD ["java", "-jar", "/myapp.jar"]
