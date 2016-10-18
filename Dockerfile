FROM java:7

MAINTAINER xausky xausky@gmail.com

ADD http://www.apache.org/dist/kafka/0.10.0.1/kafka_2.10-0.10.0.1.tgz /

RUN mv /kafka* /kafka

WORKDIR /kafka

RUN sed -i 's/zookeeper.connect=localhost:2181/zookeeper.connect=zookeeper:2181/g' config/server.properties

ADD entrypoint.sh /kafka

ENTRYPOINT ["./entrypoint.sh"]

EXPOSE 2181 9092
