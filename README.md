# Dotfiles

My collection of dotfiles. Feel free to steal whatever you find interesting. I try to keep these files descriptive so they're easy to learn from and to adapt.

This collection includes a declarative setup using Nix's home-manager to automatically install certain tools and copy the dotfiles to their correct location. Note: this is still an early version without proper testing (yet). So, while I hope to make this the default usage for this repo, it's still discouraged.

## macOS

For macs, we need homebrew to be able to install some of the required stuff mentioned below. Install with: `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`.

## init.vim

Belongs to `~/.config/nvim/`.

Requirements:
- [neovim](https://github.com/neovim/neovim): Duh. Install on a mac with: `brew install neovim`
- [vim-plug](https://github.com/junegunn/vim-plug): To manage vim plugins. Install with: `curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
- [ripgrep](https://github.com/BurntSushi/ripgrep): For faster searches. Install on a mac with: `brew install ripgrep`

## zellij.kdl

Should be copied to `~/.config/zellij/config.kdl`.

## zsh

Doesn't have a dotfile yet, but requires configuration:
- zsh: Install on a mac with: `brew install zsh zsh-completions`
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh): Install with: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

## Nix and home-manager

There's no need to copy dotfiles or install dependencies like suggested in the sections above if we're setting everything up with Nix and home-manager.

To set everything up automatically, simply run:

```sh
$ curl https://raw.githubusercontent.com/rplopes/dotfiles/master/install.sh | sh
```

This script will install Nix, home-manager, clone this dotfiles repo to `~/.dotfiles` and create a symlink for the home-manager config. Then, you can edit anything you need (like username and path), and finish setup by running `home-manager switch`.
