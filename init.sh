#!/bin/bash

echo curl -fSL http://www.apache.org/dist/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz -o /kafka.tgz

curl -fSL http://www.apache.org/dist/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz -o /kafka.tgz

tar -xzC / -f kafka.tgz

rm -rf /kafka.tgz

mv /kafka* /kafka

cd /kafka

sed -i 's/zookeeper.connect=localhost:2181/zookeeper.connect=zookeeper:2181/g' config/server.properties
