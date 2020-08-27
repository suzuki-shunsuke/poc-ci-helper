#!/usr/bin/env bash

set -eu

cd "$(dirname "$0")/.."

git fetch origin poc-1
git checkout poc-1
git config user.name ci-helper
git config user.email ci-helper@example.com
git commit --allow-empty -m "[ci skip]"
git push origin poc-1
git reset HEAD~1 --hard
git push origin poc-1 --force
