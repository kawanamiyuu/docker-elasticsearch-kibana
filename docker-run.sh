#!/bin/bash

docker run -d -i -t -p 2222:22 -p 80:80 -p 9200:9200 -p 24224:24224 kawanamiyuu/docker-elasticsearch-kibana
docker ps
