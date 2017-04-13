FROM maxicredito/base-wildfly

MAINTAINER Carlos Bittarello <cbittarello@gmail.com>

USER root

RUN yum -y install java-1.8.0-openjdk-devel && yum clean all

#set timezone
RUN ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

# Set the locale 
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8

USER wildfly

ENV JAVA_HOME /usr/lib/jvm/java
