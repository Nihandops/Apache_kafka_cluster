#!/bin/bash

docker compose -f docker-compose.yaml up -d zookeeper-1
sleep 15
docker compose -f docker-compose.yaml up -d kafka-1
sleep 10
docker compose -f docker-compose.yaml up -d kafka-ui


