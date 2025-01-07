#!/usr/bin/env bash
set -e

if ! command -v docker &> /dev/null; then
    echo "docker not installed, trying podman"
fi

