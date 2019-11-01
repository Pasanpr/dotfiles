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


function install_xcode () {
	echo "Which version of Xcode do you want to install:"
	read version

	xcversion install $version 
}

echo "Do you want to install Xcode (y/n): "
read answer

if [ "$answer" = "y" ]; then
	echo "Listing versions of Xcode.."
	xcversion list
	install_xcode

	echo "Do you want to install another version? [y/n]:"
	read answer

	while [ "$answer" = "y" ]; do
		install_xcode
		echo "Do you want to install another version? [y/n]:"
		read answer
	done
else
	echo "Xcode install skipped"
fi