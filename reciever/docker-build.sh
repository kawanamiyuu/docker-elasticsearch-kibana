#!/bin/bash

docker build --rm -t kawanamiyuu/docker-elasticsearch-kibana:reciever `dirname $0`
docker images
