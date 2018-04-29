#!/bin/bash

# setup Atom

ATOM_PATH="$HOME/.atom"

if test ! $(which atom)
then
	echo "Installing Atom"
	brew install atom
fi

echo "Installing Atom packages"
apm install sublime-style-column-selection
apm install atom-beautify
apm install close-after-last-tab
apm install ember-snippets
apm install highlight-selected
apm install indent-guide-improved
apm install language-ember-htmlbars
apm install language-ember-script
apm install minimap
apm install minimap-autohide
apm install minimap-find-and-replace
apm install minimap-git-diff
apm install minimap-hide
apm install minimap-highlight-selected
apm install minimap-selection
apm install pain-split
apm install smart-tab-name
apm install the-closer
apm install tree-view-breadcrumb

local overwrite_all=false backup_all=false skip_all=false

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

echo "Installing Atom preferences"

for src in $(find -H "$PWD" -maxdepth 2 -name '*.cson')
do
	dotfile="$(basename "${src%}")"
	dst="$ATOM_PATH/$dotfile"
	rm -rf "$dst"
	ln -s "$src" "$dst"
	success "linked $src to $dst"
done
