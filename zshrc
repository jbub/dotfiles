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
plugins=(git mercurial)

# run oh-my-zsh
source $ZSH/oh-my-zsh.sh

# encoding
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# path
export PATH=$PATH:"/usr/local/bin"
export PATH=$PATH:"/usr/bin"
export PATH=$PATH:"/bin"
export PATH=$PATH:"/usr/sbin"
export PATH=$PATH:"/sbin"

# Postgres.app
export PATH=$PATH:"/Applications/Postgres.app/Contents/Versions/9.3/bin"

# appengine
export PATH=$PATH:$HOME"/Documents/Apps/go_appengine"

# golang
export GOVERSION="1.3"
export GOPATH=$HOME"/Documents/Projekty/GO/dev"
export GOROOT="/usr/local/Cellar/go/"$GOVERSION"/libexec"
export PATH=$PATH:$GOPATH"/bin"
export PATH=$PATH:"/usr/local/Cellar/go/"$GOVERSION"/bin"

# homebrew github api token
export HOMEBREW_GITHUB_API_TOKEN=760126be00a771cbcec22ed142482d03817334ec

# virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=virtualenv-2.7
export VIRTUAL_ENV_DISABLE_PROMPT=1
source /usr/local/bin/virtualenvwrapper.sh

# git
alias gitup="git pl && git sb update"

# devpi
alias devpi-ctl=$WORKON_HOME"/devpiserver/bin/devpi-ctl"
