FROM maven:3.3-jdk-7
MAINTAINER adityaii@gmail.com
RUN mkdir -p /usr/src/mycode 
COPY . /usr/src/mycode
RUN cd /usr/src/mycode && mvn -q clean install -DskipTests 
 
