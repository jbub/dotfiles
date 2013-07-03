# custom shell look
export PS1="\u:\w\$ "

# path to /opt bin folder (macports)
export PATH="/opt/local/bin":$PATH

# utf8 encoding
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

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

# macports
alias portupdate="sudo port selfupdate && sudo port upgrade outdated"

# virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV=virtualenv-2.7
export VIRTUALENVWRAPPER_PYTHON=`which python`
source /opt/local/bin/virtualenvwrapper.sh-2.7

# git
alias gitup="git pl && git sb update"
alias gitsb="git sb foreach git pl"

# postgres
export PATH="/opt/local/lib/postgresql92/bin":$PATHTH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
