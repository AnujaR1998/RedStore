FROM openjdk:11
LABEL MAINTAINER="https://github.com/AnujaR1998"
LABEL APPLICATION="red store"
WORKDIR /usr/app
ARG JAR_FILE=target/major-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} major.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar",major.jar"]