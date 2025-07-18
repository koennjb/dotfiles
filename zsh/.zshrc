
export DOTFILES="$HOME/dotfiles"
export ZSH="$HOME/.oh-my-zsh"
# Load environment specific configs
source $DOTFILES/zsh/environment-configs/.zshrc

source $DOTFILES/zsh/oh-my-zsh.zsh
source $DOTFILES/zsh/environment-configs/oh-my-zsh.zsh
source $ZSH/oh-my-zsh.sh
source $DOTFILES/zsh/paths.zsh 
source $DOTFILES/zsh/env.zsh 
source $DOTFILES/zsh/utils.zsh 
source $DOTFILES/zsh/init.zsh 
source $DOTFILES/zsh/aliases.zsh 

# Load environment-specific aliases
if [[ -f "$DOTFILES/zsh/environment-configs/aliases.zsh" ]]; then
  source $DOTFILES/zsh/environment-configs/aliases.zsh
fi

source $DOTFILES/zsh/hooks.zsh 
source $DOTFILES/zsh/key_bindings.zsh 
source $DOTFILES/zsh/auto-complete.zsh 

# Machine specific keys to be ignored by git.
if [[ -f "$DOTFILES/zsh/keys.zsh" ]]; then
  source $DOTFILES/zsh/keys.zsh
fi

# if you wish to use IMDS set AWS_EC2_METADATA_DISABLED=false

export AWS_EC2_METADATA_DISABLED=true

