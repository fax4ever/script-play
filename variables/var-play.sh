#!/usr/bin/env bash
set -x

DOCKER_REGISTRY_IMAGE=${DOCKER_REGISTRY_IMAGE:-"quay.io/infinispan-test/registry:2"}
reg_name='kind-registry'
reg_port=${KIND_PORT-'5001'}

reg_running="$(docker container inspect -f '{{.State.Running}}' ${reg_name} || echo 'create' | xargs)"

if [ $reg_running = "create" ]; then
    echo "running"
    docker run -d --restart=always -p "127.0.0.1:${reg_port}:5000" --name "${reg_name}" "${DOCKER_REGISTRY_IMAGE}"
else
    echo "try again"
fi