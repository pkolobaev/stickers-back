FROM openjdk:8-jre-stretch
MAINTAINER pkolobaev akondakov
COPY target/stickers.jar /
CMD java -jar stickers.jar