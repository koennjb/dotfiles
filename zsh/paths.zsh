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

# User scripts
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/bin:$PATH


