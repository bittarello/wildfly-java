FROM bitta/wildfly-base

MAINTAINER Carlos Bittarello <cbittarello@gmail.com>

USER root

RUN yum -y install java-1.8.0-openjdk-devel && yum clean all

USER wildfly

ENV JAVA_HOME /usr/lib/jvm/java
