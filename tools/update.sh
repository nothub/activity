#!/usr/bin/env sh

set -eu

cd "$(realpath "$(dirname "$(readlink -f "$0")")/..")"

git checkout "master"
git pull --log "upstream" "master"
