#!/bin/bash -eu

readonly DOTFILES_ROOT="$HOME/.files"
readonly PRIVATE_CONFIG_FILE="$HOME/.private"
readonly TOOLS_PATH="$HOME/tools"

rm -f "$HOME/.vim"
ln -s "$DOTFILES_ROOT/vim" "$HOME/.vim"

touch "$PRIVATE_CONFIG_FILE"
mkdir -p "$TOOLS_PATH"
mkdir -p "$TOOLS_PATH/bin"

git submodule update --init

echo "source $DOTFILES_ROOT/bashrc" > ~/.bashrc
