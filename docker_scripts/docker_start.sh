#!/bin/bash
for c in $(docker ps --filter ancestor=stickers -a -q); do
	docker rm -f $c
done

docker build -t stickers ..
docker run -p 9087:9087 -e PORT=9087 stickers
