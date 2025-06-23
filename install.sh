#!/bin/bash -eu

readonly DOTFILES="$HOME/.files"
readonly DOTFILES_RC="$DOTFILES/rc.d"
readonly NVIM_CONFIG_PATH="$HOME/.config/nvim"
readonly PRIVATE_CONFIG_FILE="$HOME/.private"
readonly TOOLS_PATH="$HOME/tools"
readonly WSPACE_PATH="$HOME/wspace"

create_folder_structure() {
  touch "$PRIVATE_CONFIG_FILE"

  mkdir -p "$TOOLS_PATH/bin"
  mkdir -p "$WSPACE_PATH"
}

configure_vim() {
  curl -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

  rm -rf "$HOME/.vim"

  ln -s "$DOTFILES/vim" "$HOME/.vim"
  ln -s "$DOTFILES/vim/init.vim" "$NVIM_CONFIG_PATH"
}

configure_nvim() {
  git submodule init
  git submodule update

  ln -s "$DOTFILES/nvim/" "$NVIM_CONFIG_PATH"
}

configure_alacritty() {
  local ALACRITTY_THEMES="$HOME/.config/alacritty/themes/"

  mkdir -p "${ALACRITTY_THEMES}"

  for alacritty_theme in $DOTFILES_RC/alacritty/themes/*.toml; do
    cp "${alacritty_theme}" "$ALACRITTY_THEMES"
  done

  ln -s "$DOTFILES_RC/alacritty.toml" "$HOME/.alacritty.toml"
}

configure_tmux() {
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

  ln -s "$DOTFILES_RC/tmux.conf" "$HOME/.tmux.conf"
}

enable_config() {
  echo "source $DOTFILES/bashrc" > ~/.bashrc
  echo "source $DOTFILES/zshrc" > ~/.zshrc
}

create_folder_structure
configure_alacritty
configure_nvim
configure_tmux
enable_config

echo "Remember to install Tmux plugins (^b + I) when starting it up for the first time"
