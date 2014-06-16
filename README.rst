Dotfiles
========

.. image:: https://requires.io/github/jbub/dotfiles/requirements.png?branch=master
     :target: https://requires.io/github/jbub/dotfiles/requirements/?branch=master
     :alt: Requirements Status

My dotfiles managed by https://github.com/jbernard/dotfiles.

Fonts
-----

Grab fonts from Ubuntu font site http://font.ubuntu.com/ and install them.
I am using ``Ubuntu Mono`` with size of ``13``.

Dotfiles
--------

Install and sync dotfiles:

.. code-block:: bash

    # install from pypi
    pip install dotfiles

    # clone
    git clone git@github.com:jbub/dotfiles.git ~/Dotfiles

    # sync all dotfiles
    dotfiles --sync --force

Homebrew
--------

Install Homebrew:

.. code-block:: bash

    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

Update ``/etc/paths`` so that ``/usr/local/bin`` goes first:

.. code-block:: bash

    /usr/local/bin
    /usr/bin
    /bin
    /usr/sbin
    /sbin

Run brew doctor first and make sure everything is ok:

.. code-block:: bash

    brew doctor

Install packages from Brewfile:

.. code-block:: bash

    cd ~/Dotfiles
    
    # tap cask repository
    brew tap caskroom/cask

    # install from Brewfile
    brew bundle Brewfile

    # symlink packages to /Applications
    brew linkapps

    # run doctor again and fix problems if there are any
    brew doctor

Install packages from Caskfile:

.. code-block:: bash

    cd ~/Dotfiles
    
    # install from Caskfile
    brew bundle Caskfile

Iterm2
------

Just make sure you point to your settings folder to ``~/.iterm2`` and import the color scheme ``jbub.itermcolors`` to your profile.

MacVim
------

Install Vundle package manager for vim:

.. code-block:: bash

    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Package YouCompleteMe needs to be compiled first:

.. code-block:: bash

    git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe

    cd ~/.vim/bundle/YouCompleteMe

    # fetch all submodules
    git submodule update --init --recursive

    # start the compilation
    ./install.sh

Other packages can be installed from vim directly, just run this vim command:

.. code-block:: bash

    :PluginInstall

Sublime Text 3
--------------

Install Tomorrow-Night color scheme:

.. code-block:: bash
    
    # move to desktop
    cd ~/Desktop

    # clone the repo
    git clone git@github.com:chriskempson/tomorrow-theme.git tomorrow

    # copy the color scheme
    cp tomorrow/textmate/Tomorrow-Night.tmTheme ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

Install Soda Dark 3 theme:

.. code-block:: bash

    # move to packages directory
    cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
    
    # clone theme
    git clone https://github.com/buymeasoda/soda-theme/ "Theme - Soda"


Install user settings:

.. code-block:: bash
    
    cp ~/Dotfiles/sublime/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
    cp ~/Dotfiles/sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

