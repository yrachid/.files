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

function install_git_scripts() {
  chmod +x ./git-prompt.sh
  cp ./git-prompt.sh $HOME/.othman853/dotfiles
}

function install_vim_config() {
 cp ./.vimrc $HOME
} 

function create_zshrc() {
  for dotfile in "${DOTFILES[@]}"
  do
    fetch_from_remote $dotfile
    echo "source $LOCAL_PATH/$dotfile" >> $Z_PATH
  done
}

clean_local_wspace
install_git_scripts
install_vim_config
create_zshrc
