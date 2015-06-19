#!/bin/bash

# setup Sublime Text 3
SUBLIME_PATH=~/Library/Application\ Support/Sublime\ Text\ 3/

# copy SublimeText3 user preferences
if [ -d "$SUBLIME_PATH" ]; then
	echo "Installing Sublime Text packages"
	cp $PWD/sublimeText3/User $SUBLIME_PATH/Packages/

	echo "Creating Sublime Text simlink"
	mkdir ~/bin
	ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl

	echo "Setting Sublime Text as default editor on terminal"
	echo "export PATH=${HOME}/bin" >> ~/.bash_profile
else
	echo "Sublime Text preferences installation failed: Sublime Text 3 not installed"
fi