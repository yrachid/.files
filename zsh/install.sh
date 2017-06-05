#!/bin/bash

REMOTE_PATH=https://raw.githubusercontent.com/othman853/dotfiles/master/zsh
LOCAL_PATH=$HOME/.othman853/dotfiles/zsh

function fetch_from_remote() {
  curl --silent $REMOTE_PATH/$1  > $LOCAL_PATH/$1
}

mkdir -p $LOCAL_PATH

fetch_from_remote .profile 
fetch_from_remote .alias 
fetch_from_remote .env 

rm -f $HOME/.zshrc
touch $HOME/.zshrc

echo "source $LOCAL_PATH/.profile" >> $HOME/.zshrc
echo "source $LOCAL_PATH/.alias" >> $HOME/.zshrc

source $HOME/.zshrc
