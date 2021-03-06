# Set the default shell
set-option -g default-shell "/usr/bin/zsh"

# Set default prefix.
set-option -g prefix F1

# Terminal overrides.
set-option -g default-terminal "tmux-256color"
set-option -ga terminal-overrides ",col:Tc"

# Default term.
set-option -g default-terminal "xterm-256color"

# Enable vi style key bindings in command mode.
set-option -g mode-keys vi
set-option -g status-keys vi

# Mouse support.
set-option -g mouse on

# Time in milliseconds for which tmux waits after an escape.
set-option -g escape-time 0

# Keep commands history and set its limit.
set-option -g history-file ~/.tmux/tmuxhistory
set-option -g history-limit 10000

# Start window numbers at 1 to match keyboard order with tmux window order.
set-option -g base-index 1
set-option -g pane-base-index 1

# Renumber windows sequentially after closing any of them.
set-option -g renumber-windows on

# Allow programs to change title using a escape sequence.
set-option -g allow-rename on

# Don't show "Activity in window X" messages.
set-option -g visual-activity off

# Enable supported focus events.
set-option -g focus-events on

