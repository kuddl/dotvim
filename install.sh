#!/bin/bash
 
# Install these vim settings and plugins
# curl https://raw.githubusercontent.com/kuddl/dotvim/master/install.sh | sh

# go home
cd ~

# backup
mv ~/.vim ~/_vim
mv ~/.vimrc ~/_vimrc

# clone
git clone git@github.com:kuddl/dotvim.git ~/.vim

# make links
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

# get submodules
cd ~/.vim
git submodule update --init
