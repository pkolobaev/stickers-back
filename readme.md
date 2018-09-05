# Base image
https://github.com/docker-library/openjdk/blob/86918ee28d383e7af63f535a2558040dce141099/8/jre/Dockerfile

### Сборка:
В корне проекта запускаем, **ПРЕДВАРИТЕЛЬНО ЗАМЕНИВ BRANCH_NAME!**
```
docker build -t stickers:<BRANCH_NAME> .
docker run -p 8080:8080 stickers:<BRANCH_NAME>
```