FROM openjdk:8-jdk-alpine
RUN mkdir /app
ADD target/openshift-test-0.0.1-SNAPSHOT.jar /app/app.jar
ENV DEFAULT_OPTIONS="-Duser.timezone=America/Guayaquil -Djava.net.preferIPv4Stack=true -Djava.security.egd=file:/dev/./urandom"
ENV JAVA_OPTS="-Xms256m -Xmx512m"
WORKDIR /app
ENTRYPOINT java ${DEFAULT_OPTIONS} ${JAVA_OPTS} -jar /app/app.jar