#!/bin/sh

PREF_DOMAIN="com.chocolatapp.Chocolat"

echo "Setting up preferences..."

defaults write $PREF_DOMAIN "CHActiveTheme" -string "base16-eighties.dark"
defaults write $PREF_DOMAIN "CHDefaultFont" -string "EcoCoding"
defaults write $PREF_DOMAIN "CHDefaultFontSize" -float 16.0
defaults write $PREF_DOMAIN "CHLineSpacing" -float 1.3

defaults write $PREF_DOMAIN "CHHighlightCurrentLine" -bool YES
defaults write $PREF_DOMAIN "CHHighlightIdenticalWords" -bool NO
defaults write $PREF_DOMAIN "CHShowInvisibles" -bool NO
defaults write $PREF_DOMAIN "NoWrap" -bool NO
defaults write $PREF_DOMAIN "WrapColumn" -int 80
defaults write $PREF_DOMAIN "wrap_guideline" -int 1

defaults write $PREF_DOMAIN "Choosing Directories in Open Panel" -bool YES
defaults write $PREF_DOMAIN "Folders on Top" -bool YES
defaults write $PREF_DOMAIN "Hidden Filenames" -string ".DS_Store,dump.rdb"
defaults write $PREF_DOMAIN "CHProjectFindIgnoreDirectories" -string "node_modules,.git,tmp,log"
defaults write $PREF_DOMAIN "Hide Launch Bar" -bool YES

defaults write $PREF_DOMAIN "Ignore Empty Matches" -bool YES
defaults write $PREF_DOMAIN "^ and $ Match Line Boundaries" -bool YES
defaults write $PREF_DOMAIN "Dot Matches Newlines" -bool NO
defaults write $PREF_DOMAIN "Capture Numbered Groups" -bool YES
defaults write $PREF_DOMAIN "XBFF Syntax Type" -string "Ruby (default)"

#defaults write $PREF_DOMAIN "NSQuitAlwaysKeepsWindows" -bool YES
defaults write $PREF_DOMAIN "CHSaveOnDefocus" -bool NO
defaults write $PREF_DOMAIN "CHTrimTrailingWhitespaceAmount" -int 1