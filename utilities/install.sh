#!/bin/sh
#
# Various utilities

CURRENT_DIR=$(pwd)
UTILITIES_DIRECTORY=~/Utilities

if [ ! -d "$UTILITIES_DIRECTORY" ]; then
	mkdir ~/Utilities
fi

cd $UTILITIES_DIRECTORY

# Marathon for Swift scripts
MARATHON=$(command -v marathon)
if ! [ -x "$MARATHON" ]; then
	git clone https://github.com/JohnSundell/Marathon.git
	cd Marathon
	make
else
	echo "Marathon installed at $MARATHON!"
fi

# Playground (https://github.com/JohnSundell/Playground)
PLAYGROUND=$(command -v playground)
if ! [ -x "$PLAYGROUND" ]; then
	marathon install johnsundell/playground
else
	echo "Playground installed at $PLAYGROUND!"
fi