#!/usr/bin/env sh

set -eu

cd "$(realpath "$(dirname "$(readlink -f "$0")")/..")"

if ! git remote show | grep "upstream" >/dev/null 2>&1; then
    git remote add "upstream" "https://github.com/go-fed/activity.git"
fi

# merge upstream changes
git checkout master
git pull --log upstream master
