FROM maven:3.3.3-jdk-8-onbuild
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","target/spring-boot-service-1-0.0.1-SNAPSHOT.jar"]