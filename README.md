# Dotfiles

My dotfiles managed by <https://github.com/jbernard/dotfiles>.

## Dotfiles

Install and sync dotfiles:

```bash
# install from pypi
pip install dotfiles

# clone
git clone git@github.com:jbub/dotfiles.git ~/Dotfiles

# sync all dotfiles
dotfiles --sync --force
```

## Homebrew

Install Homebrew:

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Update `/etc/paths` so that `/usr/local/bin` goes first:

```bash
/usr/local/bin
/usr/bin
/bin
/usr/sbin
/usr/local/sbin
/sbin
```

Run brew doctor first and make sure everything is ok:

```bash
brew doctor
```

Install packages from Brewfile:

```bash
cd ~/Dotfiles

# install from Brewfile
bash Brewfile

# symlink packages to /Applications
brew linkapps

# run doctor again and fix problems if there are any
brew doctor
```

Iterm2
------

Setup preferences to be loaded from custom location:

```bash
Preferences -> Load preferences from a custom folder or URL -> $HOME/Dotfiles/iterm2
```

Import and select the custom color scheme:

```bash
Preferences -> Profiles -> Colors -> Color Presets -> Import -> $HOME/Dotfiles/iterm2/jbub.itermcolors
Preferences -> Profiles -> Colors -> Color Presets -> jbub
```

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

Zsh
---

Add `zsh` to `/etc/shells`.

```bash
/bin/bash
/bin/csh
/bin/ksh
/bin/sh
/bin/tcsh
/bin/zsh
/usr/local/bin/zsh
```

Finally change the default shell for your user.

```bash
sudo chsh -s /usr/local/bin/zsh
```
