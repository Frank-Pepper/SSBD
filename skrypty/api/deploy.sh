#!/bin/env bash
docker build -t registry.gitlab.com/iitpl/ssbd/2025/03/api/backend .
docker push registry.gitlab.com/iitpl/ssbd/2025/03/api/backend
