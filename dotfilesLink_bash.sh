#!/usr/local/bin/zsh
CURRENT=`pwd`

# Git
ln -s ${CURRENT}/.gitconfig ~/.gitconfig

# Bash
ln -s ${CURRENT}/.bash_profile_bash ~/.bash_profile
ln -s ${CURRENT}/.bashrc ~/.bashrc

# ssh
if echo ${OSTYPE} | grep -q '^darwin.*' ; then
  ln -s ${CURRENT}/.ssh/config ~/.ssh/config
fi

# vim
ln -s ${CURRENT}/.vimrc ~/.vimrc
ln -s ${CURRENT}/.vim ~/.vim
