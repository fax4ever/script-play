#!/bin/sh
set -o errexit

docker run -p 11222:11222 -e USER="admin" -e PASS="password" infinispan/server:15.1.0.Dev05