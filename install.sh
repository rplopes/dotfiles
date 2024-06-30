#!/bin/bash

# Still untested!

# Install Nix if not already installed
nix --version || curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install --no-confirm

# Load Nix
. /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh

# Install home-manager if not already installed
home-manager --version || nix run home-manager/master -- init --switch

# Clone dotfiles repo if not already cloned
if [ ! -d "~/.dotfiles" ]; then
  nix-shell -p git --run "git clone git@github.com:rplopes/dotfiles.git ~/.dotfiles"
fi

# Set up home-manager
ln -f ~/.dotfiles/home.nix ~/.config/home-manager/home.nix

echo "You can edit your home-manager configuration at ~/.dotfiles/home.nix."
echo "When you're happy with it, run 'home-manager switch' to finish setup."
