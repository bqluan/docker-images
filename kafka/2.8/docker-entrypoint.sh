#!/bin/bash
set -e

KAFKA_HOME=/opt/kafka

if [ "$1" = '' ]; then
  # zookeeper.connect
  if [ -z "$KAFKA_ZOOKEEPER_CONNECT" ]; then
    echo "ERROR: missing mandatory config: KAFKA_ZOOKEEPER_CONNECT"
    exit 1
  fi
  sed -ri "s@^zookeeper\.connect=.*@zookeeper.connect=$KAFKA_ZOOKEEPER_CONNECT@g" $KAFKA_HOME/config/server.properties

  # broker.id
  if [ ! -z "$KAFKA_BROKER_ID" ]; then
    sed -ri "s@^broker\.id=.*@broker.id=$KAFKA_BROKER_ID@g" $KAFKA_HOME/config/server.properties
  fi

  # listeners
  if [ ! -z "$KAFKA_LISTENERS" ]; then
    sed -ri "s@^#?listeners=.*@listeners=$KAFKA_LISTENERS@g" $KAFKA_HOME/config/server.properties
  fi

  # log.dirs
  sed -ri "s@^log\.dirs=.*@log.dirs=/kafka-logs@g" $KAFKA_HOME/config/server.properties

  exec "$KAFKA_HOME/bin/kafka-server-start.sh" "$KAFKA_HOME/config/server.properties"
fi

exec "$@"
