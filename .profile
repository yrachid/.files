. $HOME/.othman853/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='(%~)$(__git_ps1 " (%s)") => '
export PATH="$HOME/.jenv/bin:$PATH"

eval "$(jenv init -)"

source ~/.othman853/.alias
source ~/.othman853/.alias.private
source ~/.othman853/.env
source ~/.othman853/.env.private
source ~/.othman853/.functions
source ~/.othman853/.functions.private
