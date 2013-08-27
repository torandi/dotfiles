#!/bin/sh
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/zshrc ~/.zshrc
cp ~/dotfiles/zshrc.conf ~/.zshrc.conf
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/git ~/.git
ln -s ~/dotfiles/terminator/config ~/.config/terminator/config
mkdir -p ~/.ssh
chmod 0700 ~/.ssh
ln -s ~/dotfiles/ssh_config ~/.ssh/config
sh ~/dotfiles/install_vundle
