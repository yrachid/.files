#!/bin/bash

REMOTE_PATH=$PWD
LOCAL_PATH=$HOME/.othman853/dotfiles
Z_PATH=$HOME/.zshrc
DOTFILES=(.profile .alias .env .secrets)
DOTFOLDERS=(.notes)

function install_dotfile() {
  cp $REMOTE_PATH/$1 $LOCAL_PATH/$1
}

function clean_local_wspace() {
  rm -rf $LOCAL_PATH
  mkdir -p $LOCAL_PATH
  rm -f $ZPATH
}

function install_git_scripts() {
  chmod +x ./git-prompt.sh
  cp ./git-prompt.sh $LOCAL_PATH
}

function install_vim_config() {
 cp ./.vimrc $HOME
} 

function install_folders() {
  for folder in "${DOTFOLDERS[@]}"
  do
    mkdir -p $LOCALPATH/$folder
  done
}

function create_zshrc() {
  for dotfile in "${DOTFILES[@]}"
  do
    install_dotfile $dotfile
    echo "source $LOCAL_PATH/$dotfile" >> $Z_PATH
  done
}

clean_local_wspace
install_folders
install_git_scripts
install_vim_config
create_zshrc
