#!/bin/bash -eu

readonly DOTFILES_ROOT="$HOME/.files"
readonly PRIVATE_CONFIG_FILE="$HOME/.private"
readonly TOOLS_PATH="$HOME/tools"
readonly WSPACE_PATH="$HOME/wspace"

create_file_structure() {
  touch "$PRIVATE_CONFIG_FILE"

  mkdir -p "$TOOLS_PATH"
  mkdir -p "$TOOLS_PATH/bin"
  mkdir -p "$WSPACE_PATH"
}

configure_vim() {
  local NVIM_CONFIG_PATH="$HOME/.config/nvim"

  curl -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

  rm -f "$HOME/.vim"
  ln -s "$DOTFILES_ROOT/vim" "$HOME/.vim"

  mkdir -p "$NVIM_CONFIG_PATH"
  ln -s "$DOTFILES_ROOT/vim/init.vim" "$NVIM_CONFIG_PATH"
}

configure_tmux() {
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  ln -s "$DOTFILES_ROOT/rc.d/tmux.conf" "$HOME/.tmux.conf"
}

enable_config() {
  echo "source $DOTFILES_ROOT/bashrc" > ~/.bashrc
  echo "source $DOTFILES_ROOT/zshrc" > ~/.zshrc
}

create_file_structure
configure_vim
configure_tmux
enable_config
echo "Remember to install Tmux (^b + I) and Vim (:PlugInstall) plugins when starting them up for the first time"
