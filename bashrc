readonly PLATFORM=$(uname)
readonly CONFIG_PATH="$HOME/.files/rc.d"
readonly PRIVATE_CONFIG_FILE="$HOME/.private"

. "$CONFIG_PATH/aliases"
. "$CONFIG_PATH/env"
. "$CONFIG_PATH/functions"
. "$CONFIG_PATH/git-prompt.sh"
. "$CONFIG_PATH/password-store-completion.sh"
. "$PRIVATE_CONFIG_FILE"

if [ "$PLATFORM" = "Darwin" ]; then
  . "$CONFIG_PATH/git-completion.sh"
fi

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\u@\h (\w)$(__git_ps1 " (%s)") => '
