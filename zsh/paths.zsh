# Misc Paths
export PATH="$HOME/dotfiles/bin:$PATH"
export NVM_DIR="$HOME/.nvm"

# Homebrew

if [[ "$OSTYPE" =~ "darwin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  if [[ $(arch) =~ "arm64" ]]; then
    export PATH="/opt/homebrew/bin:$PATH"
  fi
fi

# Python
export PATH="$HOME/.pyenv/bin:$PATH"

eval "$(pyenv init -)"
if command -v pyenv &> /dev/null
then
  eval "$(pyenv init --path)"
fi

# Java
export PATH=$JAVA_HOME/bin:$PATH

# Flutter
export PATH="$PATH:$HOME/Downloads/software/mobile/flutter/bin"
export PATH="$PATH:$HOME/.pub-cache/bin"

# Solana
export PATH="$HOME/code/blockchain/solana/solana-src"/bin:"$PATH"

# Wezterm
export PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"

# AWS CLI
export PATH=/usr/local/bin/aws_completer:$PATH

# User scripts
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/bin:$PATH
