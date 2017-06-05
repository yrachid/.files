#!/bin/bash

REMOTE_PATH=https://raw.githubusercontent.com/othman853/dotfiles/master/zsh
LOCAL_PATH=$HOME/.othman853/dotfiles/zsh

function fetch_from_remote() {
  curl --silent $REMOTE_PATH/$1  > $LOCAL_PATH/$1
}

declare -a DOTFILES=(.profile .alias .env)

mkdir -p $LOCAL_PATH
rm -f $HOME/.zshrc
touch $HOME/.zshrc

for dotfile in "${DOTFILES[@]}"
do
  fetch_from_remote $dotfile
  echo "source $LOCAL_PATH/$dotfile" >> $HOME/.zshrc
done
