#! /bin/bash

# Disable menu bar automatically
defaults write com.apple.controlcenter "MenuBar" -int 1

# Install Sbar for Sketchybar
(git clone https://github.com/FelixKratz/SbarLua.git /tmp/SbarLua && cd /tmp/SbarLua/ && make install && rm -rf /tmp/SbarLua/)
curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v2.0.28/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf

# iterm2 config
# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.config/iterm2-custom"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
