#!/bin/bash

# Still untested!

# Install Nix
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install

# Load Nix
. /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh

# Install home-manager
nix run home-manager/master -- init --switch
