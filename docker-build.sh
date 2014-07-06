#!/bin/bash

docker build --rm -t kawanamiyuu/docker-elasticsearch-kibana `dirname $0`
docker images
