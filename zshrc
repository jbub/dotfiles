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
export PATH=$PATH:"/usr/local/sbin"
export PATH=$PATH:"/usr/sbin"
export PATH=$PATH:"/sbin"

# Postgres.app
export PATH=$PATH:"/Applications/Postgres.app/Contents/Versions/9.4/bin"

# golang
export GOVERSION="1.5"
export GOPATH=$HOME"/Documents/Projekty/GO/dev"
export GOROOT="/usr/local/Cellar/go/"$GOVERSION"/libexec"
export PATH=$PATH:$GOPATH"/bin"
export PATH=$PATH:"/usr/local/Cellar/go/"$GOVERSION"/bin"

# homebrew github api token
export HOMEBREW_GITHUB_API_TOKEN=760126be00a771cbcec22ed142482d03817334ec

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

# boot2docker
export DOCKER_HOST=tcp://boot2docker:2376
export DOCKER_CERT_PATH=$HOME"/.boot2docker/certs/boot2docker-vm"
export DOCKER_TLS_VERIFY=1

# ansible
export ANSIBLE_INVENTORY=/usr/local/etc/ansible/hosts
export ANSIBLE_HOST_KEY_CHECKING=False