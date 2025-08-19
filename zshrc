# enable zsh case-sensitive completion
CASE_SENSITIVE="true"

# disable zsh command autocorrection
DISABLE_CORRECTION="true"

# encoding
export LC_CTYPE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# path
export PATH=$PATH:"/usr/local/bin"
export PATH=$PATH:"/usr/bin"
export PATH=$PATH:"/bin"
export PATH=$PATH:"/usr/local/sbin"
export PATH=$PATH:"/usr/sbin"
export PATH=$PATH:"/sbin"

# homebrew
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

# history
HISTFILE=$HOME/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

# node 20
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"

# gnu utils
export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/findutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/gnu-tar/libexec/gnubin:$PATH"

# google-cloud-sdk
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"

# postgresql
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# go
export GOBIN="$HOME/go/bin"
export PATH="/opt/homebrew/opt/go@1.24/bin:$PATH"
export PATH="$GOBIN:$PATH"

# cargo
export PATH="$HOME/.cargo/bin:$PATH"

# pnpm9
export PATH="/opt/homebrew/opt/pnpm@9/bin:$PATH"

# dart
export PATH="$PATH":"$HOME/.pub-cache/bin"

# kubernetes
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
export PATH="${PATH}:${HOME}/.krew/bin"

alias k=kubectl
alias kc=kubectx
alias kn=kubens

# docker compose
alias dcup="docker compose up -d --remove-orphans"
alias dcdn="docker compose down --remove-orphans"

# go-mod-outdated
alias gup="go list -u -m -json all | go-mod-outdated -direct -update"

# env specific vars
[[ -f .env ]] && source .env

# pyenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# starship
eval "$(starship init zsh)"