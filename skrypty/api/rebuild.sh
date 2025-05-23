#!/usr/bin/env bash
COMPOSE_DIR="./docker/docker-compose.yml"
docker compose -f $COMPOSE_DIR stop tomcat
docker compose -f $COMPOSE_DIR build tomcat
docker compose -f $COMPOSE_DIR start tomcat