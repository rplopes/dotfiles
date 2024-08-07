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

The zsh shell is installed through the Brewfile, and it uses [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), installed through the quick install script.

After installation, copy `.zshrc` to `~/.zshrc` to override the changes made by oh-my-zsh.

This `.zshrc` sources from `~/.zshrc.local`, so you can use that second config file to store secrets and other device-specific config.
