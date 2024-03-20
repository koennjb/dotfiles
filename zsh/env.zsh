export CURSOR_TYPE="ibeam"

# FZF 
export FZF_DEFAULT_COMMAND='fd --type file'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

left="%{\e[31m%}\U250C\U2500%{\e[0m%}"
cwd="%{\e[1;32m%}%~%{\e[0m%}"
bottom="\n%{\e[31m%}\U2514%{\e[0m%} %{\e[1;32m%}\U2771%{\e[0m%}"

# Prompt
# export PS1=$'$(print $left) $(print $cwd)$(git_info) $(print $bottom) '

# openssl
export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include"

# readline
export LDFLAGS="-L/opt/homebrew/opt/readline/lib"
export CPPFLAGS="-I/opt/homebrew/opt/readline/include"

# sqlite
export LDFLAGS="-L/opt/homebrew/opt/sqlite/lib"
export CPPFLAGS="-I/opt/homebrew/opt/sqlite/include"

# zlib
export LDFLAGS="-L/opt/homebrew/opt/zlib/lib"
export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"

if command -v mise &> /dev/null
then
  # mise
  eval "$(mise activate zsh)"
else
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

# Java
export JAVA_HOME=$(/usr/libexec/java_home)
