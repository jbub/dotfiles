# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jbub"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git virtualenv)

source $ZSH/oh-my-zsh.sh

# path
export PATH="/usr/bin":$PATH
export PATH="/bin":$PATH
export PATH="/usr/sbin":$PATH
export PATH="/sbin":$PATH
export PATH="/usr/local/bin":$PATH
export PATH="/opt/local/bin":$PATH
export PATH="/Applications/Postgres.app/Contents/MacOS/bin":$PATH
export PATH="/opt/local/lib/mysql5/bin":$PATH
export PATH="/usr/local/go/bin":$PATH

# golang
export GOPATH=$HOME"/Documents/Projekty/GO/dev"
export PATH=$HOME"/Documents/Projekty/GO/dev/bin":$PATH

# encoding
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# macports
alias portupdate="sudo port selfupdate && sudo port upgrade outdated"

# virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=`which python`
export VIRTUALENVWRAPPER_VIRTUALENV=virtualenv-2.7
source /opt/local/bin/virtualenvwrapper.sh-2.7

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

# git
alias gitup="git pl && git sb update"
alias gitsb="git sb foreach git pl"

# mysql
alias mysqlstart="sudo /opt/local/etc/LaunchDaemons/org.macports.mysql5/mysql5.wrapper start"
alias mysqlstop="sudo /opt/local/etc/LaunchDaemons/org.macports.mysql5/mysql5.wrapper stop"
alias mysqlrestart="sudo /opt/local/etc/LaunchDaemons/org.macports.mysql5/mysql5.wrapper restart"

# apache
alias apachestart="sudo /opt/local/etc/LaunchDaemons/org.macports.apache2/apache2.wrapper start"
alias apachestop="sudo /opt/local/etc/LaunchDaemons/org.macports.apache2/apache2.wrapper stop"
alias apacherestart="sudo /opt/local/etc/LaunchDaemons/org.macports.apache2/apache2.wrapper restart"

# ftp
alias ftpload="sudo launchctl load -w /System/Library/LaunchDaemons/ftp.plist"
alias ftpunload="sudo launchctl unload -w /System/Library/LaunchDaemons/ftp.plist"
alias ftpstart="sudo launchctl start com.apple.ftpd"
alias ftpstop="sudo launchctl stop com.apple.ftpd"

# nginx
alias nginxstart="sudo /opt/local/sbin/nginx"
alias nginxstop="sudo /opt/local/sbin/nginx -s stop"

# memcached
alias memcachedstart="memcached -d"
alias memcachedstop="killall memcached"

# devpi
alias devpi-ctl="$WORKON_HOME/devpiserver/bin/devpi-ctl"
