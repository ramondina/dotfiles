#-- Environment
source "$ZDOTDIR/exports.zsh"

#-- Aliases
source "$ZDOTDIR/aliases.zsh"

#-- Additional configuration
for file in "$ZDOTDIR/conf.d/"*.zsh; do
  [[ -r "$file" ]] && source "$file"
done