#!/bin/bash

LATEST_VERSION=0.1.1
REMOTE_TAR_PATH=https://github.com/othman853/dotfiles/archive/$LATEST_VERSION.tar.gz
LOCAL_PATH=$HOME/.othman853/dotfiles
TEMP_PATH=$LOCAL_PATH/.tmp

function create_temp_folder() {
  mkdir -p $TEMP_PATH
}

function fetch_resources() {
  if [ -z ${LOCAL_DOTFILES+x} ]; then
    cp -R ./* $TEMP_PATH
  else
  fi  
}
