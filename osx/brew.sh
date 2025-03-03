#!/usr/bin/env bash

# Update Homebrew, formulae, and packages

brew update
brew upgrade

# Tap petere postgresql to install multiple postgres versions
#    Link: https://medium.com/keeping-code/running-multiple-postgresql-versions-simultaneously-on-macos-linux-90b3d7e08ffd
brew tap petere/postgresql

# Install packages

apps=(
    reattach-to-user-namespace
    bash-completion2
    cmake
    coreutils
    dockutil
    direnv
    elixir
    ag
    git
    fd # for telescope (nvim)
    mise
    mackup
    pidof
    pyenv
    pyenv-virtualenv
    rd # for telescope (nvim)
    tmux
    tmuxinator
    tree
    vim
    nvim
    postgresql-common
    postgresql-9.4
    postgresql-9.6
)
# Put postgres last as it is likeliest to run into issues installing

brew install "${apps[@]}"
