#!/usr/bin/env bash

set -eux

cd "$(dirname "$0")/.."

git fetch origin master --prune

git config user.name ci-helper
git config user.email ci-helper@example.com

if ! git merge origin/master; then
  exit 1
fi
