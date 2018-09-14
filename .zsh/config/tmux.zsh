# auto attach tmux session
#if ( hash tmux &>/dev/null) {
#	tmux attach-session &>/dev/null \
#		&& exit 0
#	eval tmux -f "$HOME/.tmux/tmux.conf" new-session &>/dev/null \
#		&& exit 0
#}

