#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/runcom/.ruby-version" ~
ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/runcom/.inputrc" ~
ln -sfv "$DOTFILES_DIR/runcom/.vimrc" ~
mkdir -p ~/.config/mise/
ln -sfv "$DOTFILES_DIR/runcom/mise/config.toml" ~/.config/mise/config.toml
mkdir -p ~/.config/nvim/
ln -sfv $DOTFILES_DIR/runcom/nvim/* ~/.config/nvim/
mkdir -p ~/.config/direnv/
ln -sfv "$DOTFILES_DIR/runcom/config/direnv.toml" ~/.config/direnv/direnv.toml
ln -sfv "$DOTFILES_DIR/runcom/.tmux.conf" ~
ln -sfv "$DOTFILES_DIR/runcom/.agignore" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
mkdir -p ~/.aws && ln -sfv ~/Dropbox/settings/aws/config ~/.aws/
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~

if [ "$(uname)" == "Darwin" -a -f "$DOTFILES_DIR/install/osx.sh" ]; then
    . "$DOTFILES_DIR/install/osx.sh"
fi
if [ "$(uname)" == "Linux" -a -f "$DOTFILES_DIR/install/linux.sh" ]; then
    . "$DOTFILES_DIR/install/linux.sh"
fi
