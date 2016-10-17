FROM maven:3.3-jdk-7
MAINTAINER adityaii@gmail.com
RUN mkdir -p /usr/src/mycode 
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN mvn -q clean install -DskipTests 
