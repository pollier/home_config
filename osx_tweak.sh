defaults write com.apple.finder QLEnableTextSelection -boolean true
defaults write NSGlobalDomain AppleShowAllExtensions -boolean true
defaults write com.apple.finder WarnOnEmptyTrash -boolean false
defaults write com.apple.finder FXEnableExtensionChangeWarning -boolean false
defaults write com.apple.finder ProhibitBurn -boolean true
defaults write com.apple.finder QuitMenuItem -boolean true
defaults write com.apple.finder _FXShowPosixPathInTitle -boolean true
defaults write com.apple.finder ShowPathBar -boolean true
defaults write com.apple.LaunchServices LSQuarantine -boolean false
defaults write com.apple.finder AppleShowAllFiles -boolean true
defaults write com.apple.desktopservices DSDontWriteNetworkStores -boolean true
killall Finder
