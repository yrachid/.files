autoload -U compinit && compinit
zmodload -i zsh/complist

. $HOME/.othman853/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1=$'\e[38;5;214m(%~)$(__git_ps1 " (%s)") =>\e[0m '

setopt promptsubst
setopt inc_append_history
