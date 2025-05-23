#!/bin/env bash
docker compose down postgres
docker compose up --build postgres -d
