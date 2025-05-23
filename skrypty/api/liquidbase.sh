#!/usr/bin/env bash
COMPOSE_DIR="./docker/docker-compose.yml"
docker compose -f $COMPOSE_DIR down postgres
docker compose -f $COMPOSE_DIR up -d postgres
