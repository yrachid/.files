readonly PLATFORM=$(uname)
readonly CONFIG_PATH="$HOME/.files/rc.d"

. "$CONFIG_PATH/aliases"
. "$CONFIG_PATH/env"
. "$CONFIG_PATH/etc"
. "$CONFIG_PATH/functions"
. "$CONFIG_PATH/git-prompt.sh"
. "$CONFIG_PATH/password-store-completion.sh"
. "$CONFIG_PATH/private"

if [ "$PLATFORM" = "Darwin" ]; then
  . "$CONFIG_PATH/git-completion.sh"
fi

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\u@\h (\w)$(__git_ps1 " (%s)") => '
