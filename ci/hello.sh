#!/usr/bin/env bash

set -eux

cd "$(dirname "$0")/.."

bash ci/merge-master.sh

git log -n 5 --pretty=oneline

echo hello
