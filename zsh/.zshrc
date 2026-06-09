
# Source main shell profile
source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/profile"

# pnpm
export PNPM_HOME="/Users/koenn/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
