FROM frolvlad/alpine-glibc

MAINTAINER alpine-oracle-jdk8-tini


COPY jdk1.8.0_251/ /usr/java/jdk/


ENV JAVA_HOME /usr/java/jdk

ENV PATH ${PATH}:${JAVA_HOME}/bin

RUN apk add --no-cache tini \ 
    && ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

WORKDIR /opt

