#!/bin/sh
set -o errexit

docker rm $(docker ps -a -q)