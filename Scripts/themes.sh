#!/usr/bin/env bash

if [ -d "~/Customizations/themes/tomorrow-theme/" ]
then
  cd ~/Customizations/themes/
  echo "Cloning tomorrow-theme"

  git clone https://github.com/Pasanpr/tomorrow-theme.git

  cd ~/dotfiles
fi

source ./Xcode/install.sh
