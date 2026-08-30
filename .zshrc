#-- Environment
source "$ZDOTDIR/.zsh/exports.zsh"

#-- Aliases
source "$ZDOTDIR/.zsh/aliases.zsh"

#-- Additional configuration
for file in "$ZDOTDIR/.zsh/conf.d/"*.zsh; do
  [[ -r "$file" ]] && source "$file"
done