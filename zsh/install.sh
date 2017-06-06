#!/bin/bash

REMOTE_PATH=https://raw.githubusercontent.com/othman853/dotfiles/master/zsh
LOCAL_PATH=$HOME/.othman853/dotfiles/zsh
Z_PATH=$HOME/.zshrc
declare -a DOTFILES=(.profile .alias .env)

function fetch_from_remote() {
  curl --silent $REMOTE_PATH/$1  > $LOCAL_PATH/$1
}

function clean_local_wspace() {
  rm -rf $LOCAL_PATH
  mkdir -p $LOCAL_PATH
  rm -f $ZPATH
}

function create_zshrc() {
  clean_local_wspace
  for dotfile in "${DOTFILES[@]}"
  do
    fetch_from_remote $dotfile
    echo "source $LOCAL_PATH/$dotfile" >> $Z_PATH
  done
}

create_zshrc
