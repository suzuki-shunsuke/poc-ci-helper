#!/usr/bin/env bash

set -eu

cd "$(dirname "$0")/.."

TARGET_BRANCH=poc-3
git fetch origin "$TARGET_BRANCH"
git checkout "$TARGET_BRANCH"
git config user.name ci-helper
git config user.email ci-helper@example.com
git commit --allow-empty -m "[ci skip]"
git push origin "$TARGET_BRANCH"
git reset HEAD~1 --hard
git push origin "$TARGET_BRANCH" --force
