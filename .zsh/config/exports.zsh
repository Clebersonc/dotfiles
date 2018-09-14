# Initialize $PATH with system binaries.
path=(
	/home/ctroy/.local/bin
	/usr/local/bin
	/usr/local/sbin
	/usr/bin
	/bin
	/usr/sbin
	/sbin
	$path
)

#source "$HOME/.cache/wal/colors.sh"

# Term
#export TERM='rxvt-unicode-256color'

# default editor
export EDITOR=nvim

# Default browser
export BROWSER=w3m

# default pager
export PAGER='less'

# GnuPG
export GPG_TTY=$(tty)

# Set path for local scripts.
path=($path $HOME/.local/share/bin{,/external})

# java class path
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")

# Android SDK
export ANDROID_HOME="$HOME/Library/Android/sdk"
path=($path $ANDROID_HOME/{tools,platform-tools})

# man
export MANWIDTH='100' # Fixed line width for man pages

# nvim
export NVIM_RPLUGIN_MANIFEST="$HOME/.vim/cache/share/rplugin.vim"

# highlight
export HIGHLIGHT_OPTIONS='--out-format="xterm256" --style="pablo"'

# transmission
# export TRANSMISSION_HOME="$HOME/.config/transmission"
# source $TRANSMISSION_HOME/settings.zsh # Build $TRANSMISSION_OPTIONS variable.

# ranger
export RANGER_LOAD_DEFAULT_RC='false'
export RANGER_LAST_DIRECTORY_BUFFER="$XDG_DATA_HOME/ranger/last_directory"

# Default Config and Cache Home
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

# Locale
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'

# less
source "$HOME/.config/less/lessrc.zsh" # Load core options.
export LESSHISTFILE="$HOME/.config/less/lesshistory" # Command and search history file.
export LESSKEYRC="$HOME/.config/less/lesskey" # Path of the uncompiled lesskey file.
export LESSKEY="$LESSKEYRC.lwc" # Path of the compiled lesskey file.

# fzf
export FZF_DEFAULT_COLORS='--color=hl:4,hl+:4,info:8,border:8,prompt:4,pointer:3,marker:3,spinner:8,header:6'
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_COLORS \
 	--exact \
 	--no-bold \
 	--inline-info \
 	--height='40%' \
 	--jump-labels='bmvenritusldkfjgh' \
 	--bind='ctrl-f:jump-accept'"

export FZF_COMPLETION_OPTS='--preview="highlight --out-format=xterm256 --style=pablo {} 2>/dev/null || cat {}"'
