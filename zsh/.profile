function is_git_repository() {
  local true=0
  local false=1

  if [ -d .git ]; then return $true; else return $false; fi
}

function get_branch_name() {
  echo $(git symbolic-ref --short -q HEAD)
}

function current_branch() {
  if is_git_repository; then echo " ($(get_branch_name))"; else echo ""; fi
}

export PS1=$'\e[38;5;214m(%~)$(current_branch) => '

setopt promptsubst
setopt inc_append_history
