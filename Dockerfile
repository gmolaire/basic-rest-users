FROM alpine:edge
MAINTAINER gumold

RUN apk add --no-cache openjdk8
COPY build/libs/basic-rest-users*.jar /opt/lib/basic-rest-users.jar

ENTRYPOINT ["/usr/bin/java"]
CMD ["-jar", "/opt/lib/basic-rest-users.jar"]

EXPOSE 9090
