#!/bin/bash

docker build --rm -t kawanamiyuu/docker-elasticsearch-kibana:sender `dirname $0`
docker images
