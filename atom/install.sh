#!/bin/bash

# setup Atom

ATOM_PATH="~/.atom"

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
