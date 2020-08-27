#!/usr/bin/env bash

set -eu

cd "$(dirname "$0")/.."

bash ci/merge-master.sh

echo hello

echo foo
