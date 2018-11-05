# Make special variables duplicate-free.
typeset -g -U path fpath cdpath

# Load custom load path.
fpath+=($fpath "$ZDOTDIR/autoload")
fpath+=($fpath "$ZDOTDIR/completions")

# Load zrecompile for zcompile.
autoload -U zrecompile

# Load prompt system.
autoload -U promptinit

# Enable completion.
autoload -U compinit
compinit -d $ZDOTDIR/cache/.zcompdump # Completion cache file.

# Load and register edit in $EDITOR function.
autoload -U edit-command-line
zle -N edit-command-line

# Load custom hooks API.
autoload -U add-zsh-hook

# Load and register ZLE surround plugin.
autoload -U surround
zle -N delete-surround surround
zle -N add-surround surround
zle -N change-surround surround

# Load and register ZLE test objects for delimiters.
autoload -U select-quoted
zle -N select-quoted

# Load and resgister ZLE test objects for pairs of brackets.
autoload -U select-bracketed
zle -N select-bracketed

# Load extra features for completion.
zmodload zsh/complist

# Load history search like fish shell
autoload -U history-substring-search-up
autoload -U history-substring-search-down
zle -N history-substring-search-up
zle -N history-substring-search-down
