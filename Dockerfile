FROM openjdk:8-jre-stretch
MAINTAINER pkolobaev
COPY target/stickers-back.jar /
RUN useradd -m stickers
USER stickers
CMD java -jar stickers-back.jar