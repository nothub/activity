#!/usr/bin/env sh

set -eu

cd "$(realpath "$(dirname "$(readlink -f "$0")")/..")"

add_remote() {
    if ! git remote show | grep "$1" >/dev/null 2>&1; then
        printf >&2 "adding remote: %s\t%s\n" "$1" "$2"
        git remote add "$1" "$2"
    fi
}

add_remote "upstream" "https://github.com/go-fed/activity.git"
add_remote "superserious" "https://github.com/superseriousbusiness/activity.git"
add_remote "sudovim" "https://github.com/SudoVim/activity.git"
