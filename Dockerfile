FROM maven:3.3.3-jdk-8-onbuild
VOLUME /tmp
ADD /target/spring-boot-service-1-0.0.1-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]