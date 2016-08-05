#!/bin/sh
#
# Xcode
#
# This installs preferred Xcode themes

echo "Copying Xcode theme"
mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
cp ~/Customizations/themes/tomorrow-theme/Xcode\ 4/*.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
