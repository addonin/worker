FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD maven/worker-latest.jar app.jar
EXPOSE 8080
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
