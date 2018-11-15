#!/usr/bin/env bash
set -e
mkdir -p /src

git clone https://github.com/Hernrup/dotfiles.git /src/dotfiles || true
pushd /src/dotfiles
./install.sh
popd
