#!/bin/sh

BASE=$(dirname $0)
BASE=$(dirname $BASE)

rm -rf $HOME/.vim/
mkdir -p $HOME/.vim/bundle/

cp -f $BASE/dots/.vimrc $HOME/

git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

vim --not-a-term +PluginInstall +qall
