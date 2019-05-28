FROM gradle:5.4.1-jdk8-alpine as compile
LABEL MAINTAINER "misrahariom@gmail.com"
USER root
WORKDIR /opt/demo
ADD --chown=gradle:gradle . /opt/demo
RUN ls -lhtr /opt/demo
RUN gradle build --stacktrace
RUN ls -lhtr /opt/demo/build

FROM openjdk:8-jre-alpine as apps
RUN mkdir -p /apps
WORKDIR /apps
RUN cd /
COPY --from=compile /opt/demo/build/libs/demo-0.0.1-SNAPSHOT.jar /apps
EXPOSE 8081
ENTRYPOINT [ "java", "-jar", "/apps/demo-0.0.1-SNAPSHOT.jar"]