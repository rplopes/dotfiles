#!/bin/bash

# Still untested!

# Install Nix
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install

# Install home-manager
nix run home-manager/master -- init --switch
