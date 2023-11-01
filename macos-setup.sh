#!/bin/bash

#Enable tap to click (if on macbook)
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
echo "Tap to click enabled"

#Allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool TRUE
echo "Text Selection enabled"

#Showing icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
echo "Desktop media icons enabled"

#Showing all filename extensions in Finder by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
echo "Filename extensions enabled"

#Use column view in all Finder windows by default
defaults write com.apple.finder FXPreferredViewStyle Clmv
echo "Default view columns - can be modified later in settings"

#refresh
killall Finder

#Check for updates (weekly)
softwareupdate -l
echo "Software has been updated"

Install Chrome
curl -O https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
hdiutil mount googlechrome.dmg
cp -R "/Volumes/Google Chrome/Google Chrome.app" "/Applications/"
echo "Chrome has been installed"

echo "Script execution completed."
