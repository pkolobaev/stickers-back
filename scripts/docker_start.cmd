docker ps --filter ancestor=stickers -a -q>stickers.txt
for /F "tokens=*" %%A in (stickers.txt) do docker rm -f %%A
del stickers.txt
docker build -t stickers ..
docker run -p 8080:8080 stickers