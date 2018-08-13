#!/bin/sh
#
# Xcode

XCINSTALL=$(gem list -i xcode-install)
if ! [ -x "$XCINSTALL" ]; then
	gem install xcode-install
	xcversion update
else
	echo "xcode-install already installed"
fi


function install_xode () {
	echo "Which version of Xcode do you want to install:"
	read version

	xcversion install $version 
}

echo "Do you want to install versions of Xcode: "
read answer

if [ "$answer" = "y" ]; then
	echo "Listing versions of Xcode.."
	xcversion list
	install_xode

	echo "Do you want to install another version? [y/n]:"
	read answer

	while [ "$answer" = "y" ]; do
		install_xode
		echo "Do you want to install another version? [y/n]:"
		read answer
	done
else
	echo "Xcode install skipped"
fi

echo "Installing Xcode themes.."

xcode_themes_dir=~/Library/Developer/Xcode/UserData/FontAndColorThemes/

if [ ! -d $xcode_themes_dir ]
then
  echo "Creating Xcode themes directory..."
  mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
fi

echo "Copying Xcode theme"
cp ~/Customizations/themes/tomorrow-theme/Xcode\ 4/*.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
