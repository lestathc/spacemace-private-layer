#!/bin/bash

PWD=$(cd "$(dirname ${BASH_SOURCE[0]})" && pwd)

if [[ -e $HOME/.spacemacs ]]; then
    echo ".spacemas exists"
    ans="Y"
    read -p "Backup old .spacemacs and link with new?[Y/n]" ans
    case $ans in
        [nN]* ) break;;
        * )
            mv $HOME/.spacemacs $HOME/.spacemacs.bak;
            ln -s $PWD/dot.spacemacs $HOME/.spacemacs;
            break;;
    esac
else
    echo "Link .spacemacs"
    ln -s $PWD/dot.spacemacs $HOME/.spacemacs
fi

if ! [[ -L $HOME/.emacs.d/private ]] && [[ -d $HOME/.emacs.d/private ]]; then
    echo "Old private layer exists and not linkage"
    ans="Y"
    read -p "Backup old private layer and link with new?[Y/n]" ans
    case $ans in
        [nN]* ) break;;
        *)
            mv $HOME/.emacs.d/private $HOME/.emacs.d/private.bak;
            ln -s $PWD/private $HOME/.emacs.d/private;
            break;;
    esac
fi
