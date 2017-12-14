#!/bin/sh

themes_dir=~/Customizations/themes

if [ ! -d $themes_dir ]
then
  echo "Creating Customizations directory"
  mkdir -p ~/Customizations/themes/
fi

cd $themes_dir

if ! test -d ~/Customizations/themes/tomorrow-theme;
	then
	echo "Installing tomorrow-theme"
	git clone https://github.com/Pasanpr/tomorrow-theme.git
fi

if ! test -d ~/Customizations/themes/afterglow-itermcolors;
	then
	echo "Installing Afterglow theme for iTerm"
	git clone https://github.com/yabatadesign/afterglow-itermcolors/
fi

if ! test -d ~/Customizations/themes/fonts;
	then
	echo "Installing powerline fonts"
	git clone https://github.com/powerline/fonts.git
	source ./fonts/install.sh
fi

cd ~/.dotfiles

source ./Xcode/install.sh
