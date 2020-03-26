FROM bqluan/docker-openjdk:8-jre-alpine

ENV KAFKA_VER 2.4.1
ENV SCALA_VER 2.12

# bash is needed by kafka's startup scripts
RUN apk --no-cache add \
  bash

# Download kafka
RUN set -o pipefail \
  && wget -qO - https://downloads.apache.org/kafka/${KAFKA_VER}/kafka_${SCALA_VER}-${KAFKA_VER}.tgz | tar -xzC /opt \
  && mv /opt/kafka_${SCALA_VER}-${KAFKA_VER} /opt/kafka

VOLUME /kafka-logs

EXPOSE 9092

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
