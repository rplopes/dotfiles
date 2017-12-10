# Dotfiles

My collection of dotfiles. Feel free to steal whatever you find interesting. I try to keep these files descriptive so they're easy to learn from and to adapt.

## macOS

For macs, we need homebrew to be able to install some of the required stuff mentioned below. Install with: `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`.

## init.vim

Belongs to `~/.config/nvim/`.

Requirements:
- [neovim](https://github.com/neovim/neovim): Duh. Install on a mac with: `brew install neovim`
- [vim-plug](https://github.com/junegunn/vim-plug): To manage vim plugins. Install with: `curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
- [ripgrep](https://github.com/BurntSushi/ripgrep): For faster searches. Install on a mac with: `brew install ripgrep`

## zsh

Doesn't have a dotfile yet, but requires configuration:
- zsh: Install on a mac with: `brew install zsh zsh-completions`
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh): Install with: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
