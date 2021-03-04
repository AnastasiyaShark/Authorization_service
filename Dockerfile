FROM openjdk:14-ea-12-jdk-alpine
EXPOSE 8080
ADD target/Authorization_service-0.0.1-SNAPSHOT.jar /authorizationService.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/authorizationService.jar"]