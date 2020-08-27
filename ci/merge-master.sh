#!/usr/bin/env bash

set -eux

cd "$(dirname "$0")/.."

git config user.name ci-helper
git config user.email ci-helper@example.com

git fetch origin master --prune

if ! git merge origin/master; then
  exit 1
fi
