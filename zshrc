readonly PLATFORM=$(uname)
readonly CONFIG_PATH="$HOME/.files/rc.d"
readonly PRIVATE_CONFIG_FILE="$HOME/.private"

. "$CONFIG_PATH/aliases"
. "$CONFIG_PATH/env"
. "$CONFIG_PATH/functions"
. "$CONFIG_PATH/git-prompt.sh"
. "$CONFIG_PATH/password-store-completion.sh"
. "$CONFIG_PATH/git-completion.sh"
. "$PRIVATE_CONFIG_FILE"

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='(%~)$(__git_ps1 " (%s)") => '

autoload -U compinit && compinit
zmodload -i zsh/complist
setopt promptsubst
setopt inc_append_history

# bindkey '^R' history-incremental-search-backward
