readonly PLATFORM=$(uname)
readonly CONFIG_PATH="$HOME/.othman853/rc.d"

. "$CONFIG_PATH/aliases"
. "$CONFIG_PATH/private"
. "$CONFIG_PATH/env"
. "$CONFIG_PATH/functions"
. "$CONFIG_PATH/password-store-completion.sh"
. "$CONFIG_PATH/git-prompt.sh"

if [ "$PLATFORM" = "Darwin" ]; then
  . "$CONFIG_PATH/git-completion.sh"
fi

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\u@\h (\w)$(__git_ps1 " (%s)") => '
