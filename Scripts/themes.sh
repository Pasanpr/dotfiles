#!/bin/sh

themes_dir=~/Customizations/themes

if [ ! -d $themes_dir ]
then
  echo "Creating Customizations directory"
  mkdir -p ~/Customizations/themes/

  cd ~/Customizations/themes/
  echo "Cloning tomorrow-theme"

  git clone https://github.com/Pasanpr/tomorrow-theme.git

  cd ~/.dotfiles
fi

source ./Xcode/install.sh


echo "Installing powerline fonts"
if test $(which pip)
then
  pip install powerline-status
fi
