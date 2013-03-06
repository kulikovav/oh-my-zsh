#!/bin/sh

if [ -d ~/.vim ]; then
    exit
else
    cp -R ~/.oh-my-zsh/tools/vim/.vim ~/
    echo "Symlinking Vim configurations..."
    for rc in vim gvim; do
        link ~/.vim/${rc}rc $HOME/.${rc}rc
    done
    ~/.vim/update.sh all
    touch ~/.vimlocal
fi
