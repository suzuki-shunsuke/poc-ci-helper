#!/usr/bin/env bash

set -eux

cd "$(dirname "$0")/.."

bash ci/merge-master.sh

git log --pretty=oneline

echo hello
