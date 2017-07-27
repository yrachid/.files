#!/bin/bash

function generate_folders() {
  ln -s $HOME/.othman853/.vim ~/.vim
  mkdir -p $HOME/.othman853/.scripts
  mkdir -p $HOME/.othman853/.notes
  git submodule update --init
}

SHELL_TYPE=$1

case $SHELL_TYPE in
  bash)
    ln -s $HOME/.othman853/.bashrc ~/.bashrc
    # generate_folders
  ;;
  zsh)
    ln -s $HOME/.othman853/.zshrc ~/.zshrc
    # generate_folders
  ;;
  *)
    echo "Invalid shell type $SHELL_TYPE"
    echo "Available options are: bash, zsh"
    echo "Synopsis: ./install.sh [SHELL]"
    exit 1
  ;;
esac

  ln -s $HOME/.othman853/.vim ~/.vim
  mkdir -p $HOME/.othman853/.scripts
  mkdir -p $HOME/.othman853/.notes
  git submodule update --init

