typeset -g -a LESS_OPTIONS=(
	# Make the search smart case sensitive.
	--ignore-case

	# Disable EOF tilde (~) characters and use blank lines instead.
	--tilde

	# Truncate long lines and do not wrap them.
	--chop-long-lines

	# Display a status column at left edge of the screen.
	--status-column

	# Make status column more verbose.
	--LONG-PROMPT

	# Make target line the tenth line from top.
	--jump-target=10

	# Output ANSI escape sequences in their raw form.
	--RAW-CONTROL-CHARS

	# First line of the text should be always on top.
	--clear-screen

	# Disable bell and use visual bell if available.
	--silent

	# Set tab length.
	--tabs=4

	# Specifies the default number of positions to scroll horizontally.
	--shift=5
)

# Set options as string and remove temporary array.
export LESS="${LESS_OPTIONS[@]}" && unset LESS_OPTIONS

# Use `highlight` program to try to highlight opened file according to its extension.
export LESSOPEN="| highlight $HIGHLIGHT_OPTIONS -- %s 2>/dev/null"

export LESS_TERMCAP_md=$(tput bold; tput setaf 4) # Turn on bold mode.
export LESS_TERMCAP_me=$(tput sgr0) # Turn off all attributes.
export LESS_TERMCAP_so=$(tput bold; tput setaf 3) # Begin standout mode.
export LESS_TERMCAP_se=$(tput rmso; tput sgr0) # Exit standout mode.
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 250) # Begin underline mode.
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0) # Exit underline mode.
export LESS_TERMCAP_mr=$(tput rev) # Turn on reverse video mode.
export LESS_TERMCAP_mh=$(tput dim) # Turn on half-bright mode.
export LESS_TERMCAP_ZN=$(tput ssubm) # Enter subscript mode.
export LESS_TERMCAP_ZV=$(tput rsubm) # End subscript mode.
export LESS_TERMCAP_ZO=$(tput ssupm) # Enter superscript mode.
export LESS_TERMCAP_ZW=$(tput rsupm) # End superscript mode.

# vim: filetype=zsh
