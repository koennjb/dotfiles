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
