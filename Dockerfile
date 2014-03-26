FROM ubuntu

MAINTAINER gomezd

RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list; apt-get update;
RUN apt-get install -y openjdk-6-jdk wget
RUN apt-get install -y git

RUN wget -q -N http://download.nextag.com/apache/kafka/0.8.1/kafka_2.9.2-0.8.1.tgz; tar -xzf kafka_2.9.2-0.8.1.tgz -C /opt
RUN ln -s /opt/kafka_2.9.2-0.8.1 /opt/kafka; rm kafka_2.9.2-0.8.1.tgz

ENV KAFKA_HOME /opt/kafka

ADD start-kafka.sh /usr/bin/start-kafka.sh
CMD start-kafka.sh
