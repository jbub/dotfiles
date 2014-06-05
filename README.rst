Dotfiles
========

My dotfiles managed by https://github.com/jbernard/dotfiles.

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

    # install from Brewfile
    brew bundle

    # symlink packages to /Applications
    brew linkapps

    # run doctor again and fix problems if there are any
    brew doctor

MacVim
------

Install Vundle package manager for vim:

.. code-block:: bash

    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Package YouCompleteMe needs to be compiled first:

.. code-block:: bash

    git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe

    cd ~/.vim/bundle/YouCompleteMe && ./install.sh

Other packages can be installed from vim directly, just run this vim command:

.. code-block:: bash

    :PluginInstall
