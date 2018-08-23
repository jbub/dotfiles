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

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Update ``/etc/paths`` so that ``/usr/local/bin`` goes first:

.. code-block:: bash

    /usr/local/bin
    /usr/bin
    /bin
    /usr/sbin
    /usr/local/sbin
    /sbin

Run brew doctor first and make sure everything is ok:

.. code-block:: bash

    brew doctor

Install packages from Brewfile:

.. code-block:: bash

    cd ~/Dotfiles

    # install from Brewfile
    bash Brewfile

    # symlink packages to /Applications
    brew linkapps

    # run doctor again and fix problems if there are any
    brew doctor

Iterm2
------

Just make sure you point to your settings folder to ``~/.iterm2`` and import the color scheme ``jbub.itermcolors`` to your profile.

Oh My Zsh
---------

Clone oh-my-zsh to your home directory under ``~/.oh-my-zsh``.

.. code-block:: bash

    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

Add ``zsh`` to ``/etc/shells``.

.. code-block:: bash

    /bin/bash
    /bin/csh
    /bin/ksh
    /bin/sh
    /bin/tcsh
    /bin/zsh
    /usr/local/bin/zsh

Finally change the default shell for your user.

.. code-block:: bash

    chsh -s /usr/local/bin/zsh
