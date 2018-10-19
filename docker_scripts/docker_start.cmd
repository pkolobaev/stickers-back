:: Ищем запущенные контейнеры с приложением и записываем их id в файл (криво, надо будет поправить...)
docker ps --filter ancestor=stickers -a -q>stickers.txt
:: Убиваем все запущенные контейнеры
for /F "tokens=*" %%A in (stickers.txt) do docker rm -f %%A
:: Удаляем файл
del stickers.txt
:: Билдим образ контейнера из Dockerfile в родительской директории проекта
docker build -t stickers ..
:: Запускаем контейнер
docker run -p 9087:9087 -e PORT=9087 stickers