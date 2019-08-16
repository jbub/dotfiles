# path to zsh configuration
ZSH=$HOME/.oh-my-zsh

# custom oh-my-zsh dir
ZSH_CUSTOM=$HOME"/.customzsh"

# zsh theme
ZSH_THEME="jbub"

# enable zsh case-sensitive completion
CASE_SENSITIVE="true"

# disable zsh command autocorrection
DISABLE_CORRECTION="true"

# zsh plugins
plugins=(git)

# encoding
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# path
export PATH=$PATH:"/usr/local/bin"
export PATH=$PATH:"/usr/bin"
export PATH=$PATH:"/bin"
export PATH=$PATH:"/usr/local/sbin"
export PATH=$PATH:"/usr/sbin"
export PATH=$PATH:"/sbin"

# Postgres.app
export PATH=$PATH:"/Applications/Postgres.app/Contents/Versions/10/bin"

# golang
export GOVERSION="1.12.9"
export GOPATH=$HOME"/go"
export GOROOT="/usr/local/Cellar/go/"$GOVERSION"/libexec"
export PATH=$PATH:$GOPATH"/bin"
export PATH=$PATH:"/usr/local/Cellar/go/"$GOVERSION"/bin"
export GO111MODULE="on"

# virtualenv
export VIRTUAL_ENV_DISABLE_PROMPT=1

# java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.0.2.jdk/Contents/Home

# gcloud
export CLOUDSDK_PYTHON=/Users/jbub/.pyenv/versions/2.7.15/bin/python2

# run oh-my-zsh
source $ZSH/oh-my-zsh.sh

# kube-ps1
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# kubernetes
alias k=kubectl
alias kc=kubectx

# docker compose
alias dcup="docker-compose up -d --remove-orphans"
alias dcdn="docker-compose down --remove-orphans"

# use gnu sed
alias sed="/usr/local/opt/gnu-sed/libexec/gnubin/sed"

# secret environment vars
[[ -f .env ]] && source .env
