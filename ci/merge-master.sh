#!/usr/bin/env bash

set -eu

cd "$(dirname "$0")/.."

git fetch origin master --prune
if ! git merge origin/master; then
  exit 1
fi
