#!/usr/bin/env bash

if ! [ -d "~/Customizations/themes/"]
then
  mkdir -p ~/Customizations/themes/

  cd ~/Customizations/themes/
  echo "Cloning tomorrow-theme"

  git clone https://github.com/Pasanpr/tomorrow-theme.git

  cd ~/.dotfiles
fi

source ./Xcode/install.sh
