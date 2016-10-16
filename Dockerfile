FROM ubuntu
MAINTAINER adityaii@gmail.com
RUN apt-get update -y && apt-get install maven -y && mkdir -p /usr/src/mycode 
COPY . /usr/src/mycode
RUN cd /usr/src/mycode && mvn -q clean install -DskipTests && cp target/subversion-plugin.hpi /tmp
 
