#!/bin/sh

docker container kill $(docker ps -as | grep splinterlands-bot) >/dev/null 2>&1
docker container rm $(docker ps -as | grep splinterlands-bot) >/dev/null 2>&1
echo "Splinterlands bot instances stopped"