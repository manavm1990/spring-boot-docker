FROM openjdk:11

# TODO: Add a non-root user for security 🔒.

ARG JAR_FILE=build/libs/\*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]