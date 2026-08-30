#-- Tab auto completion
#   includes hidden files
#   ignores case sensitivity
autoload -Uz compinit && compinit -u
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
_comp_options+=(globdots)

#-- kubectl auto completion
[ -x "$(command -v kubectl)" ] && source <(kubectl completion zsh)
