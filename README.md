# all about

## Install one-liner
curl https://raw.githubusercontent.com/kuddl/dotvim/master/install.sh | sh

## Manuell installation

# Backup
mv ~/.vim ~/_vim
mv ~/.vimrc ~/_vimrc

# Clone
git clone https://github.com/kuddl/dotvim.git ~/.vim

# Link
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

# Install Plugins
cd ~/.vim
git submodule update --init

## update plugins
cd ~/.vim
git submodule foreach git pull origin master

## How to install Plugins
cd ~/.vim
git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
