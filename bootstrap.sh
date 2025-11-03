#!/usr/bin/env bash

set -e  # Exit on error

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Detect OS
if [[ "$OSTYPE" == "darwin"* ]]; then
    OS="macos"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OS="linux"
else
    echo "Unsupported OS"
    exit 1
fi

# macOS setup
if [[ "$OS" == "macos" ]]; then
    # Install Homebrew if needed
    if ! command -v brew &> /dev/null; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    
    # Install from Brewfile
    brew bundle --file="$SCRIPT_DIR/Brewfile" --no-upgrade
fi

# Linux setup
if [[ "$OS" == "linux" ]]; then
    # Detect package manager
    if command -v apt-get &> /dev/null; then
        sudo apt-get update
        sudo apt-get install -y $(cat "$SCRIPT_DIR/packages-apt.txt")
    elif command -v yum &> /dev/null; then
        sudo yum install -y $(cat "$SCRIPT_DIR/packages-yum.txt")
    fi
fi

# Verify stow is installed
if ! command -v stow &> /dev/null; then
    echo "Error: GNU Stow is not installed. Please install it first."
    exit 1
fi

# Create .local files if they don't exist
echo "Creating .local files..."
mkdir -p "$SCRIPT_DIR/shell/.config/shell"
touch "$SCRIPT_DIR/shell/.config/shell/paths.local"
touch "$SCRIPT_DIR/shell/.config/shell/env.local"
touch "$SCRIPT_DIR/shell/.config/shell/aliases.local"
touch "$SCRIPT_DIR/shell/.config/shell/functions.local"

# Stow all packages
echo "Stowing dotfiles..."
cd "$SCRIPT_DIR"

# List of packages to stow
PACKAGES=(
    "shell"
    "zsh"
    "bash"
    "ghostty"
    "starship"
    "tmux"
    "nvim"
)

for package in "${PACKAGES[@]}"; do
    if [ -d "$package" ]; then
        echo "  - Stowing $package"
	stow -v --restow --dir="$SCRIPT_DIR" --target="$HOME" "$package"
    fi
done

echo ""
echo "✓ Dotfiles setup complete!"
echo ""
echo "Note: Restart your shell or run 'source ~/.zshrc' (or ~/.bashrc) to apply changes."
