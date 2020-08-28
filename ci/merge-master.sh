#!/usr/bin/env bash

set -eux

cd "$(dirname "$0")/.."

git fetch origin master --prune

if ! env GIT_AUTHOR_NAME=ci-helper GIT_AUTHOR_EMAIL=ci-helper@example.com GIT_COMMITTER_NAME=ci-helper GIT_COMMITTER_EMAIL=ci-helper@example.com git merge --no-edit origin/master; then
  exit 1
fi
