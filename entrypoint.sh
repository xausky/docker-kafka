#!/bin/bash

if [ "zookeeper" == "$1" ]
then

  bin/zookeeper-server-start.sh config/zookeeper.properties

elif [ "broker" == "$1" ]
then

  bin/kafka-server-start.sh config/server.properties

else

  $@

fi
