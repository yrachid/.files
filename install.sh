#!/bin/bash

SHELL_TYPE=$1

install_vim() {
  ln -s $HOME/.othman853/vim $HOME/.vim
  git submodule update --init
}

case $SHELL_TYPE in
  vim)
    install_vim
    ;;

  bash)
    ln -s $HOME/.othman853/bashrc ~/.bashrc
    install_vim
  ;;

  zsh)
    ln -s $HOME/.othman853/zshrc ~/.zshrc
    install_vim
  ;;

  *)
    echo "Invalid install type $SHELL_TYPE"
    echo "Available options are: vim, bash, zsh"
    echo "Synopsis: ./install.sh [install-type]"
    exit 1
  ;;
esac
