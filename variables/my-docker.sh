#!/usr/bin/env bash
set -e

if ! command -v docker &> /dev/null; then
  echo "Docker installation not found. Please install docker."
else
  echo "Docker installation found"
fi