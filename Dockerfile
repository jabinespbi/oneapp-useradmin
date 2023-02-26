#
# Build stage
#
FROM maven:3.8.3-openjdk-17 AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

#
# Package stage
#
FROM openjdk:17-jdk-slim
COPY --from=build /home/app/target/useradmin-0.0.1-SNAPSHOT.war /usr/local/lib/useradmin.war
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/useradmin.war"]