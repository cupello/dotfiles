# Path to your oh-my-zsh installation.
export ZSH="/Users/${USER}/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

plugins=(
  git
  brew
  node
  npm
  vscode
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Load aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Homebrew setup
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Node Version Manager configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Personal directory
export PATH="$PATH:/opt:$HOME/bin"

# Go configuration
export GOPATH=$HOME/sandbox/go
export PATH=$PATH:$GOPATH/bin

# Docker machine and Docker compose ZSH completion
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi

# Github Token
export GH_TOKEN=503393c1fbd05af873c7c6d0a18e86c4d5e1a42e

# Setup Flutter CLI
export PATH=$PATH:/opt/flutter/bin
 
# Setup GVM bootstrap version
export GOROOT_BOOTSTRAP=$GOROOT
[[ -s "/Users/caioferreira/.gvm/scripts/gvm" ]] && source "/Users/caioferreira/.gvm/scripts/gvm"

# Python Path
export PATH="/Users/caioferreira/Library/Python/3.7/bin:$PATH"

# Set neovim as editor
export EDITOR=nvim

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/caioferreira/.sdkman"
[[ -s "/Users/caioferreira/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/caioferreira/.sdkman/bin/sdkman-init.sh"