# all about

Ein erneuter Versuch mit vim zu leben....

## Installation
    git clone https://github.com/kuddl/dotvim.git ~/.vim

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

    cd ~/.vim
    git submodule update --init

## Panthogen Plugin installieren
    cd ~/.vim
    git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive

## Alle Plugins updaten
    cd ~/.vim
    git submodule foreach git pull origin master
