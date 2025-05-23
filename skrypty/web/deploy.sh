#!/bin/env bash
docker build -t registry.gitlab.com/iitpl/ssbd/2025/03/web/front . -f ./docker/Dockerfile
docker push registry.gitlab.com/iitpl/ssbd/2025/03/web/front
