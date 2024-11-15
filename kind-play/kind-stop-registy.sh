#!/bin/sh
set -o errexit

reg_name='kind-registry'
running="$(docker inspect -f '{{.State.Running}}' "${reg_name}" 2>/dev/null || true)"

if [ "${running}" == 'true' ]; then
    docker stop kind-registry
    docker rm kind-registry
fi