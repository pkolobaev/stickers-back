#!/bin/sh
if [ "$TRAVIS_BRANCH" = "master" ]; then
    wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh &&
    heroku plugins:install @heroku-cli/plugin-container-registry &&
    docker login -p=$HEROKU_API_KEY registry.heroku.com &&
    heroku container:push web --app $HEROKU_APP_NAME &&
    heroku container:release web --app $HEROKU_APP_NAME
fi