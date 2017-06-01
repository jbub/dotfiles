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

# run oh-my-zsh
source $ZSH/oh-my-zsh.sh

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
export PATH=$PATH:"/Applications/Postgres.app/Contents/Versions/9.6/bin"

# golang
export GOVERSION="1.8.3"
export GOPATH=$HOME"/go"
export GOROOT="/usr/local/Cellar/go/"$GOVERSION"/libexec"
export PATH=$PATH:$GOPATH"/bin"
export PATH=$PATH:"/usr/local/Cellar/go/"$GOVERSION"/bin"

# virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=virtualenv
export VIRTUAL_ENV_DISABLE_PROMPT=1
source /usr/local/bin/virtualenvwrapper.sh

# java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home

# git
alias gitup="git pl && git sb update"

# secret environment vars
[[ -f .env ]] && source .env