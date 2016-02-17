#!/bin/bash

PWD=$(cd "$(dirname ${BASH_SOURCE[0]})" && pwd)

if ! [[ -e $HOME/.spacemacs ]]; then
    echo "Link .spacemacs"
    ln -s $PWD/dot.spacemacs $HOME/.spacemacs
fi

if ! [[ -L $HOME/.emacs.d/private ]] && [[ -d $HOME/.emacs.d/private ]]; then
	  mv $HOME/.emacs.d/private $HOME/.emacs.d/private.bak
fi

ln -s $PWD/private $HOME/.emacs.d/private
