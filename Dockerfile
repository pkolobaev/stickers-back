FROM openjdk:8-jre-stretch
MAINTAINER pkolobaev
COPY target/stickers.jar /
RUN useradd -m stickers
USER stickers
CMD java -jar stickers.jar