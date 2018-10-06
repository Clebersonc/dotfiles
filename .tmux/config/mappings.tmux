# Unbind defult prefix.
unbind-key C-b

# Reload configuration.
bind-key r \
	source-file ~/.tmux/tmux.conf \; \
	display-message ' (!) ~/.tmux/tmux.conf reloaded.'

# Switch panes by number.
bind-key -n M-1  select-pane -t :.1
bind-key -n M-2  select-pane -t :.2
bind-key -n M-3  select-pane -t :.3
bind-key -n M-4  select-pane -t :.4

# Switch windows.
bind-key -n F2 new-window \;
bind-key -n F3 select-window -t :- # Previous window.
bind-key -n F4 select-window -t :+ # Next window.

# Toggle zoom.
bind-key -n S-F1 resize-pane -Z

# Split pane with same directory.
bind-key -n F5 display-panes \; split-window -h -c "#{pane_current_path}"
bind-key -n F6 display-panes \; split-window -v -c "#{pane_current_path}"

# Resize panes.
bind-key -n S-Up resize-pane -U
bind-key -n S-Down resize-pane -D
bind-key -n S-Left resize-pane -L
bind-key -n S-Right resize-pane -R

# Swap windows across themselves.
bind-key -n S-F3 swap-window -t :-1
bind-key -n S-F4 swap-window -t :+1

# Kill windows without prompt.
bind-key -n S-F2 kill-window

# Enter copy mode.
bind-key -n F7 copy-mode

# Select
bind-key -T copy-mode-vi v send-keys -X begin-selection
bind-key -T copy-mode-vi V send-keys -X select-line

# Copy
bind-key -T copy-mode-vi y send-keys -X copy-pipe-and-cancel

# Paste
bind-key p paste-buffer -s '' # Paste without CR feed.
bind-key P choose-buffer "paste-buffer -b '%%' -s ''"

# Search
bind-key -T copy-mode-vi / command-prompt -i -p '/' 'send-keys -X search-forward-incremental "%%%"'
bind-key -T copy-mode-vi ? command-prompt -i -p '?' 'send-keys -X search-backward-incremental "%%%"'

# Jump search mode with prefix.
bind-key / copy-mode \; send-keys '/'
bind-key ? copy-mode \; send-keys '?'

# page terminal
bind-key -n F9 copy-mode \; send-keys NPage
bind-key -n F10 copy-mode \; send-keys PPage

# tmux yank plugin
run-shell ~/.tmux/plugins/tmux-yank/yank.tmux

