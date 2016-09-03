#!/bin/bash

# Base System Install/Update
apt-get update
apt-get -y upgrade
apt-get -y curl git vim zsh

# Customization
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.zshrc ~/.zshrc.orig
mkdir /bs
cd /bs
git clone https://github.com/thegeekkid/zshconfig.git
cd zshconfig
if [ $1 = "debian" ]; then
  git checkout debian
else
  if [ $1 = "teamproject" ]; then
    git checkout teamproject
  fi
fi
cp terminalparty.zsh-theme ~/.oh-my-zsh/themes/terminalparty.zsh-theme
cp zshrc ~/.zshrc