fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i
autoload bashcompinit && bashcompinit

complete -C aws_completer aws 

