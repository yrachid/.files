readonly CONFIG_PATH="$HOME/.files/rc.d"
readonly PRIVATE_CONFIG_FILE="$HOME/.private"

. "$CONFIG_PATH/aliases"
. "$CONFIG_PATH/env"
. "$CONFIG_PATH/functions"
. "$CONFIG_PATH/git-prompt.sh"
. "$PRIVATE_CONFIG_FILE"

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='(%~)$(__git_ps1 " (%s)") => '

autoload -U compinit && compinit
zmodload -i zsh/complist
setopt promptsubst
setopt inc_append_history

bindkey -e
bindkey '^R' history-incremental-search-backward

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

