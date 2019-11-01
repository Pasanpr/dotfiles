#!/bin/sh

themes_dir=~/Customizations/themes

if [ ! -d $themes_dir ]
then
  echo "Creating Customizations directory"
  mkdir -p ~/Customizations/themes/
fi

cd $themes_dir

if ! test -d ~/Customizations/themes/fonts; then
	echo "Installing powerline fonts"
	git clone https://github.com/powerline/fonts.git
	source ./fonts/install.sh
else
	echo "powerline fonts installed"
fi

if ! test -d ~/Customizations/themes/ayu-iTerm; then
	echo "Installing Ayu theme for iTerm"
	git clone https://github.com/hwyncho/ayu-iTerm.git
else
	echo "Ayu theme installed"
fi

echo "Installing Xcode themes.."

if ! test -d ~/Customizations/themes/ayu-xcode-theme; then
	echo "Installing Ayu theme for Xcode"
	git clone https://github.com/vburojevic/ayu-xcode-theme.git
else
	echo "Ayu for Xcode already installed"
fi

xcode_themes_dir=~/Library/Developer/Xcode/UserData/FontAndColorThemes/

if [ ! -d $xcode_themes_dir ]
then
  echo "Creating Xcode themes directory..."
  mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
fi

echo "Copying Xcode theme"
cp ~/Customizations/themes/ayu-xcode-theme/*.xccolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/

cd ~/.dotfiles

# Install spaceship-prompt
# https://github.com/denysdovhan/spaceship-prompt
npm install -g spaceship-prompt