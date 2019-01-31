function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

function virtualenv_prompt_info() {
  if [[ -n $VIRTUAL_ENV ]]; then
    echo "$ZSH_THEME_VIRTUALENV_PROMPT_PREFIX${${VIRTUAL_ENV}:t}$ZSH_THEME_VIRTUALENV_PROMPT_SUFFIX"
  fi
}

PROMPT='
%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}$(box_name)%{$reset_color%} in %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(virtualenv_prompt_info)$(git_prompt_info)$(kube_ps1)
%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )$ '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_VIRTUALENV_PROMPT_PREFIX=" venv %{$fg[yellow]%}"
ZSH_THEME_VIRTUALENV_PROMPT_SUFFIX="%{$reset_color%}"

KUBE_PS1_NS_ENABLE=false
KUBE_PS1_SYMBOL_ENABLE=false
KUBE_PS1_PREFIX=' ctx '
KUBE_PS1_SUFFIX=''

local return_status="%{$fg[red]%}%(?..✘)%{$reset_color%}"
RPROMPT='${return_status}%{$reset_color%}'