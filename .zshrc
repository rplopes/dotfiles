# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="fwalch"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Which plugins would you like to load?
plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-nvm fzf)

source $ZSH/oh-my-zsh.sh

# The following lines were added by compinstall
zstyle ':completion:*' completer _complete _ignored _approximate
zstyle :compinstall filename '/Users/ricardo/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

eval "$(zellij setup --generate-auto-start zsh)"

source ~/.zshrc.local
