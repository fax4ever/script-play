#!/bin/sh
set -o errexit

docker stop $(docker ps -a -q)