#!/bin/bash

docker run -d -i -t -p 1022:22 -p 80:80 -p 9200:9200 -p 24224:24224 kawanamiyuu/docker-elasticsearch-kibana:reciever
docker ps
