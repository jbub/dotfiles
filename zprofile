# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)".

# orbstack
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
