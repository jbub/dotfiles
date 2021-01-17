# Dotfiles

My dotfiles.

## Dotfiles

Install and sync dotfiles:

```bash
# clone
git clone git@github.com:jbub/dotfiles.git ~/Dotfiles

# sync all dotfiles
make sync
```

## Homebrew

Install Homebrew and install packages from Brewfile:

```bash
cd ~/Dotfiles

# install from Brewfile
brew bundle install
```

Iterm2
------

Setup key mapping:

```bash
Preferences -> Profiles -> Keys -> Left options acts as: Esc
Preferences -> Profiles -> Keys -> Add -> Left option + Left arrow, Send Escape Sequence, Esc+ b
Preferences -> Profiles -> Keys -> Add -> Left option + Right arrow , Send Escape Sequence, Esc+ f
```

Setup font:

```bash
Preferences -> Profiles -> Text -> Change font -> 14pt, Medium, FiraCode Nerd Font Mono
```
