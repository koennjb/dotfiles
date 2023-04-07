# Misc Paths
export PATH="$HOME/dotfiles/bin:$PATH"
export NVM_DIR="$HOME/.nvm"

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

if [[ "$OSTYPE" =~ "darwin" ]]; then
  if [[ $(arch) =~ "arm64" ]]; then
    export PATH="/opt/homebrew/bin:$PATH"
  fi
fi

# Python
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Flutter
export PATH="$PATH:$HOME/Downloads/software/mobile/flutter/bin"
export PATH="$PATH:$HOME/.pub-cache/bin"

# Solana
export PATH="$HOME/code/blockchain/solana/solana-src"/bin:"$PATH"

# Wezterm
export PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"

