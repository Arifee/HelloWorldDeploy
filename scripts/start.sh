#!/bin/bash 

cd /home/ec2-user/server
sudo /usr/bin/java -jar -Dserver.port=8080 \
    *.jar > /dev/null 2> /dev/null < /dev/null &
	mvn clean install &
	java -jar target/gs-spring-boot-0.0.1-SNAPSHOT.jar 