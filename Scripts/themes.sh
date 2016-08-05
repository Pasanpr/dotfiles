#!/bin/sh

themes_dir=~/Customizations/themes

if [ ! -d $themes_dir ]
then
  echo "Creating Customizations directory"
  mkdir -p ~/Customizations/themes/
fi

cd ~/Customizations/themes/

echo "Installing tomorrow-theme"
git clone https://github.com/Pasanpr/tomorrow-theme.git

echo "Installing Afterglow theme for iTerm"
git clone https://github.com/yabatadesign/afterglow-itermcolors/

echo "Installing powerline fonts"
git clone https://github.com/powerline/fonts.git
source ./fonts/install.sh

cd ~/.dotfiles

source ./Xcode/install.sh
