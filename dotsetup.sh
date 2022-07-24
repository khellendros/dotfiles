#!/bin/bash

#create symlinks for dot files

if [ ! -d ~/.irssi/ ]; then
	mkdir ~/.irssi
fi

rm ~/.irssi/config
ln -s ~/dotfiles/.irssi/config ~/.irssi/config

rm ~/.bashrc
ln -s ~/dotfiles/.bashrc ~/.bashrc

rm ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc

rm ~/.vimrc
ln -s ~/dotfiles/.vimrc ~/.vimrc

rm ~/.tmux.conf
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

rm ~/.gdbinit
ln -s ~/dotfiles/.gdbinit ~/.gdbinit

rm ~/.gitconfig
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
