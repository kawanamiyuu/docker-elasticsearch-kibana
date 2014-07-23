#!/bin/bash

docker run -d -i -t -p 2022:22 kawanamiyuu/docker-elasticsearch-kibana:sender
docker ps
