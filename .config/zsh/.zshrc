# custom zsh config - ramon dina

# History caching
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Tab auto completion
# - includes hidden files
# - ignores case sensitivity
autoload -Uz compinit && compinit -u
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
_comp_options+=(globdots)

# kubectl auto completion
[ -x "$(command -v kubectl)" ] && source <(kubectl completion zsh)

# bindkeys
bindkey -v					      # enable vi mode
bindkey '^r' history-incremental-search-backward      # enable reverse search
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line   		      # enable vim mode for line editing

# load custom zsh functions
[ -f $ZDOTDIR/files/functionsrc ] && source $ZDOTDIR/files/functionsrc

# source files
zsh_add_file aliasses
zsh_add_file exports
zsh_add_file distrorc

# source plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"
zsh_add_plugin "endaaman/lxd-completion-zsh"

# load theme 'starship'
[ -x "$(command -v starship)" ] && eval "$(starship init zsh)"

