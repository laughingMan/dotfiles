# Sets reasonable OS X defaults.
# http://blog.jameskyle.org/2010/08/osx-defaults-hacks/
# Run ./set-defaults.sh and you'll be good to go.

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
chflags nohidden ~/Library

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Set finder preferences
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder SidebarTagsSctionDisclosedState -bool false
defaults write com.apple.finder ShowStatusBar -bool false
defaults write com.apple.finder ShowTabView -bool false
defaults write com.apple.finder NewWindowTargetPath "file://localhost$(echo ~)"

# Set dock preferences
defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { arrangement = 1; displayas = 1; "file-label" = Downloads; "file-type" = 2; preferreditemsize = "-1"; showas = 2; "file-label" = Downloads; "file-data" = {"_CFURLString" = "file:///Users/isaac/Downloads/";};}; "tile-type" = "directory-tile";}'
defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { arrangement = 1; displayas = 1; "file-label" = Downloads; "file-type" = 2; preferreditemsize = "-1"; showas = 2; "file-label" = Applications; "file-data" = {"_CFURLString" = "file:///Applications/";};}; "tile-type" = "directory-tile";}'

# Run the screensaver if we're in the bottom-left hot corner.
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0

# Hide Safari's bookmark bar.
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Turn off tab case completion
echo "set completion-ignore-case On" >> ~/.inputrc