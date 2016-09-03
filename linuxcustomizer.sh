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
if [ -f /etc/debian_version ]; then
  git checkout debian
fi
cp terminalparty.zsh-theme ~/.oh-my-zsh/themes/terminalparty.zsh-theme
cp zshrc ~/.zshrc
chsh -s /bin/zsh
clear
echo Linux has been configured!  Please restart the shell to reflect all changes.