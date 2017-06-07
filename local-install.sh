#!/bin/bash

REMOTE_PATH=$PWD
LOCAL_PATH=$HOME/.othman853/dotfiles
Z_PATH=$HOME/.zshrc
DOTFILES=(.profile .alias .env)

function fetch_from_remote() {
  cp $REMOTE_PATH/$1 $LOCAL_PATH/$1
}

function clean_local_wspace() {
  rm -rf $LOCAL_PATH
  mkdir -p $LOCAL_PATH
  rm -f $ZPATH
}

function create_zshrc() {
  for dotfile in "${DOTFILES[@]}"
  do
    fetch_from_remote $dotfile
    echo "source $LOCAL_PATH/$dotfile" >> $Z_PATH
  done
}

clean_local_wspace
chmod +x ./git-prompt.sh
cp ./git-prompt.sh $HOME/.othman853/dotfiles
create_zshrc
