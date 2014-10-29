#!/bin/bash

docker run -d -i -t -p 20022:22 kawanamiyuu/docker-elasticsearch-kibana:sender
docker ps
