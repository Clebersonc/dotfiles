# htop
bind-key H \
	new-window -n htop htop \; \
	set-window-option allow-rename off \; \
	rename-window htop

# man commandline
 unbind c
 bind c new-window 'vim ~/Documents/man/commandline.txt'

 # man for vimtips
 unbind v
 bind v new-window 'vim ~/Documents/man/vimtips.txt'

# man for w3m
 bind w new-window 'less ~/Documents/man/w3m.txt'

 unbind d
 bind d new-window 'less ~/Documents/man/daily.txt'

 unbind p
 bind p new-window "vim ~/Documents/pomo/$(date +'%d-%m-%y').txt"

