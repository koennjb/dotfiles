
# Source main shell profile
source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/profile"

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"
