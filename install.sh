#!/bin/bash

SHELL_TYPE=$1

case $SHELL_TYPE in
  bash)
    ln -s $HOME/.othman853/bashrc ~/.bashrc
  ;;
  zsh)
    ln -s $HOME/.othman853/zshrc ~/.zshrc
  ;;
  *)
    echo "Invalid shell type $SHELL_TYPE"
    echo "Available options are: bash, zsh"
    echo "Synopsis: ./install.sh [SHELL]"
    exit 1
  ;;
esac

ln -s $HOME/.othman853/vim ~/.vim
git submodule update --init

