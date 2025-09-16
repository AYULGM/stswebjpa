FROM openjdk:17

ARG VERSION

COPY target/stswebjpa-0.0.1-SNAPSHOT.jar /app/stswebjpa.jar

LABEL title="Member App" \
      version="$VERSION" \
      description="This image is member service"

ENV APP_HOME /app
EXPOSE 8080
VOLUME /app/upload

WORKDIR $APP_HOME
ENTRYPOINT ["java"]
CMD ["-jar", "stswebjpa.jar"]
