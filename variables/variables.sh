#!/usr/bin/env bash
set -x

function nextImageVersion() {
    BUILD=1
    if [[ "${CURRENT_VERSION}" == ${ISPN_VERSION}* ]]; then
        BUILD=$((BUILD+1))
    fi
    echo ${ISPN_VERSION}-${BUILD}
}

ISPN_VERSION="15.0.10.Final"

CURRENT_VERSION=""
IMAGE_VERSION=$(nextImageVersion)
echo $IMAGE_VERSION

CURRENT_VERSION=$IMAGE_VERSION
IMAGE_VERSION=$(nextImageVersion)
echo $IMAGE_VERSION

CURRENT_VERSION=$IMAGE_VERSION
IMAGE_VERSION=$(nextImageVersion)
echo $IMAGE_VERSION

CURRENT_VERSION=$IMAGE_VERSION
IMAGE_VERSION=$(nextImageVersion)
echo $IMAGE_VERSION
