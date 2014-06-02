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
CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mercurial)

source $ZSH/oh-my-zsh.sh

# encoding
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# path
export PATH="/bin":$PATH
export PATH="/sbin":$PATH
export PATH="/usr/sbin":$PATH
export PATH="/usr/bin":$PATH
export PATH="/usr/local/bin":$PATH

# Postgres.app
export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin":$PATH

# appengine
export PATH=$HOME"/Documents/Apps/go_appengine":$PATH

# golang
export PATH="/usr/local/go/bin":$PATH
export GOPATH=$HOME"/Documents/Projekty/GO/dev"
export GOROOT="/usr/local/go"
export PATH=$GOPATH"/bin":$PATH

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
alias gitsb="git sb foreach git pl"

# ftp
alias ftpload="sudo launchctl load -w /System/Library/LaunchDaemons/ftp.plist"
alias ftpunload="sudo launchctl unload -w /System/Library/LaunchDaemons/ftp.plist"
alias ftpstart="sudo launchctl start com.apple.ftpd"
alias ftpstop="sudo launchctl stop com.apple.ftpd"

# devpi
alias devpi-ctl="$WORKON_HOME/devpiserver/bin/devpi-ctl"