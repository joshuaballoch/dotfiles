#!/usr/bin/env bash

# NOTE: for nerd font, manually change font in iTerm2 after
#   in Settings -> Profiles -> Text -> Font -> Hack Nerd Font Mono
#   and Settings -> Profiles -> Text -> Non-ASCII Font -> Hack Nerd Font Mono
#
apps=(
    1password
    docker
    dropbox
    firefox
    font-hack-nerd-font
    google-chrome
    iterm2
    intellij-idea-ce
    rectangle
    spotify
    slack
    visual-studio-code
    whatsapp
)

brew install --cask "${apps[@]}"
