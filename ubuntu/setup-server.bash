#! /usr/bin/env bash

git clone https://github.com/chbroecker/dotfiles .dotfiles
ln -s ~/.dotfiles/vim/.vimrc ~/
ln -s ~/.dotfiles/tmux/.tmux.conf ~/

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

