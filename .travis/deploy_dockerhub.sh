#!/bin/sh
docker login -e $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASS
if [ "$TRAVIS_BRANCH" = "master" ]; then
    TAG="$TRAVIS_BRANCH"
    docker build -f Dockerfile -t $TRAVIS_REPO_SLUG:$TAG .
    docker push $TRAVIS_REPO_SLUG
fi
