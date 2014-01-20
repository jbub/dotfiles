Dotfiles
========

My dotfiles managed by https://github.com/jbernard/dotfiles.

Install
-------

.. code-block:: bash

    # install from pypi
    pip install dotfiles

    # clone
    cd $HOME && git clone git@github.com:jbub/dotfiles.git Dotfiles

Manage
------

.. code-block:: bash

    # list all dotfiles
    dotfiles --list

    # check state of dotfiles
    dotfiles --check

    # sync dotfiles with repository
    dotfiles --sync --force
