#!/bin/sh
set -o errexit

docker network list

docker network prune -f

docker network list