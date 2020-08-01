#!/bin/bash

readonly DOTFILES_ROOT="$HOME/.files"

rm -f "$HOME/.vim"
ln -s "$DOTFILES_ROOT/vim" "$HOME/.vim"
git submodule update --init

echo "source $DOTFILES_ROOT/bashrc" > ~/.bashrc
