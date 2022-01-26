FROM openjdk:11

# TODO: Add a non-root user for security 🔒.

# Using Gradle only
# TODO: Break this to use DEPENDENCY for performance ⚡
ARG JAR_FILE=build/libs/\*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]