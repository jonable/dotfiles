# __Install Notes__

## **Clone the repo**

    git clone https://github.com/jonable/dotfiles.git ~/Projects/dotfiles

## **.vimrc setup**

*Symlink .vimrc file from repo to home*

     ln -s ~/Projects/dotfiles/.vimrc ~/.vimrc

*Install Vundle*

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

*open vim and run :PluginInstall*


## Install Silver Searcher for faster CTRLP
*Mac OS*
    brew install the_silver_searcher
*Ubuntu*
    apt-get install silversearcher-ag
