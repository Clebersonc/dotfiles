# zsh-autopair: Insert or delete brackets, parens, quotes in pair.
source "$ZDOTDIR/plugins/zsh-autopair/autopair.zsh"

# zsh-autosuggestions: Fish-like auto-suggestions.
source "$ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

# zsh-syntax-highlighting: Syntax highlighting support.
source "$ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
	ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
	typeset -A ZSH_HIGHLIGHT_STYLES

	# main
	ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red'
	ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=yellow'
	ZSH_HIGHLIGHT_STYLES[alias]='fg=cyan'
	ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=cyan'
	ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,underline'
	ZSH_HIGHLIGHT_STYLES[function]='fg=cyan'
	ZSH_HIGHLIGHT_STYLES[command]='fg=green'
	ZSH_HIGHLIGHT_STYLES[precommand]='fg=green,underline'
	ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=cyan'
	ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green,italic'
	ZSH_HIGHLIGHT_STYLES[path]='none,underline'
	ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=cyan,underline'
	ZSH_HIGHLIGHT_STYLES[path_prefix]='none'
	ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='none'
	ZSH_HIGHLIGHT_STYLES[globbing]='bg=black'
	ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=cyan'
	ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='none'
	ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='none'
	ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=magenta'
	ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=yellow'
	ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=yellow'
	ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=blue'
	ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=blue'
	ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=blue'
	ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=blue'
	ZSH_HIGHLIGHT_STYLES[assign]='none,underline'
	ZSH_HIGHLIGHT_STYLES[redirection]='fg=cyan'
	ZSH_HIGHLIGHT_STYLES[comment]='fg=black'
	ZSH_HIGHLIGHT_STYLES[arg0]='default'

	# brackets
	ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]='bg=black'
