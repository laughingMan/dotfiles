#!/bin/bash

# setup iTerm
ITERM_PATH="~/Library/Application\ Support/iTerm"

# copy iTerm preferences
if [ -d "$ITERM_PATH" ]; then 
	cp $PWD/iterm2/com.googlecode.iterm2.plist ${ITERM_PATH}
else
	echo "iTerm preferences installation failed: iTerm not installed"
fi