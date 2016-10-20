#!/bin/bash

if [ "zookeeper" == "$1" ]
then
  bin/zookeeper-server-start.sh config/zookeeper.properties
elif [ "broker" == "$1" ]
then
  id=$(expr "'$(ip -one -f inet addr show eth0)'" : '.*\.\([0-9]\{1,3\}\)\/.*')
  sed -i "s/broker.id=0/broker.id=$id/g" config/server.properties
  bin/kafka-server-start.sh config/server.properties
else
  $@
fi
