FROM openjdk:8-jre-stretch
MAINTAINER pkolobaev
COPY target/stickers.jar /
CMD java -jar stickers.jar