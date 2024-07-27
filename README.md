# Dotfiles

My collection of dotfiles. Feel free to steal whatever you find interesting. I try to keep these files descriptive so they're easy to learn from and to adapt.

## Quick install

```
git clone git@github.com:rplopes/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install.sh
```

Note: this quick installer doesn't deal with the actual dotfiles yet, or the dependencies mentioned below that can't be installed through homebrew.

## Homebrew

Homebrew is a package manager for MacOS and for Linux as well. It's installed with the quick install script above, and includes a Brewfile to automate installations. To add or remove any tool/app/plugin/etc, edit the Brewfile and run:

```
cd ~/.dotfiles
brew bundle
```

## init.vim

Belongs to `~/.config/nvim/`.

Requirements:

- [neovim](https://github.com/neovim/neovim): Using default NeoVim. Included in Brewfile
- [vim-plug](https://github.com/junegunn/vim-plug): To manage vim plugins. Install with: `curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
- [ripgrep](https://github.com/BurntSushi/ripgrep): For faster searches. Included in Brewfile

## zellij.kdl

Contents of the `zellij` directory should be copied to `~/.config/zellij`.

## zsh

Doesn't have a dotfile yet, but requires configuration:

- zsh: Included in Brewfile
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh): Install with: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
