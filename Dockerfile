FROM maven:3.3-jdk-7
MAINTAINER adityaii@gmail.com
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN mvn -q clean install -DskipTests 
