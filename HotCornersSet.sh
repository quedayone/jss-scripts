#!/bin/sh
# Set Hot Corners to our likeing
# get the logged in user - thanks to Ben Toms (@macmule) - https://macmule.com/2014/11/19/how-to-get-the-currently-logged-in-user-in-a-more-apple-approved-way/
loggedInUser=`python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");'`

# Bottom right screen corner → Mission Control
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.dock wvous-br-corner -int 2
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.dock wvous-br-modifier -int 0
#
defaults write /Users/"$loggedInUser"/Library/Preferences/com.apple.dock.plist wvous-br-corner -int 2
defaults write /Users/"$loggedInUser"/Library/Preferences/com.apple.dock.plist wvous-br-modifier -int 0
# Bottom left screen corner → Start screen saver
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.dock wvous-bl-corner -int 5
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.dock wvous-bl-modifier -int 0
#
defaults write /Users/"$loggedInUser"/Library/Preferences/com.apple.dock.plist wvous-bl-corner -int 5
defaults write /Users/"$loggedInUser"/Library/Preferences/com.apple.dock.plist wvous-bl-modifier -int 0

# defaults read /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.dock 

exit 0