#!/bin/sh
#
# Xcode
#
# This installs preferred Xcode themes

xcode_themes_dir=~/Library/Developer/Xcode/UserData/FontAndColorThemes/

if [ ! -d $xcode_themes_dir ]
then
  echo "Creating Xcode themes directory..."
  mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
fi

echo "Copying Xcode theme"
cp ~/Customizations/themes/tomorrow-theme/Xcode\ 4/*.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
