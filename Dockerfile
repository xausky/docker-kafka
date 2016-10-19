FROM java:7

MAINTAINER xausky xausky@gmail.com

ENV KAFKA_VERSION 0.10.0.1
ENV SCALA_VERSION 2.10

ADD ./init.sh /

RUN /init.sh

ADD ./entrypoint.sh /kafka

WORKDIR /kafka

ENTRYPOINT ["./entrypoint.sh"]

EXPOSE 2181 9092
