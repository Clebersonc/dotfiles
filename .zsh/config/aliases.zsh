# Core shotcuts
alias rm='trash' # Use 'trash' to have more control for your deleted files.
alias erase='command rm' # Use to delete permanently and release your anger.
alias ip='ip -color' # Use `ip` utility always with colors.
alias mkdir='mkdir -p' # Make parentes.
alias updb='sudo updatedb' # Update db for locate command.
alias fontl='fc-cache -fv' # Update font cache.
alias ll=' ls -l --almost-all --si' # List nodes with their details.
alias mv='mv --interactive --verbose' # Move nodes with interactive mode and extra verbosity.
alias cp='cp --interactive --verbose' # Copy nodes with interactive mode and extra verbosity.
alias ln='ln --interactive --verbose' # Link nodes with interactive mode and extra verbosity.
alias du="du --max-depth=1 --si" # list files and dirs by size.
alias pbcopy="xclip -selection clipboard" # Copy terminal output.
alias pbpaste="xclip -selection clipboard -o" # Paste text on clipboard.
alias ls='ls --almost-all --classify --color=always --group-directories-first --ignore=.pki --ignore=.thumbnails --ignore=.icons --ignore=.gtkrc-2.0 --ignore=.esd_auth --ignore=eclipse-workspace --ignore=.npm --ignore=.gnupg --ignore=.ssh --ignore=.tooling --ignore=.eclim --ignore=.gradle --ignore=.swt --ignore=.eclipse --ignore=.npmrc --ignore=workbench.xmi --ignore=.fasd --ignore=.fehbg --ignore=Xauthority --ignore=.gitmodules --ignore=.dircolors --ignore=.mono --ignore=.grip --ignore=.httpie --ignore=.stardict --ignore=.gcalcli_cache --ignore=.gcalcli_oauth --ignore=.git --ignore=.android --ignore=.lyxauth --ignore=.sdcv_history'
alias sdcv='sdcv --color -01'
#alias grep='grep --color=auto --exclude-dir=".git" --exclude-dir="node_modules"' # Grep with colors and ignore common directories.
#alias lsd="command ls -A --classify | grep '/' | column"
#alias lsf='command ls -A --classify | grep --invert-match '/$' | column'

# Custom Shortcuts
alias a='awman'
alias c='wcalc'
alias d='http --download'
alias dfc='dfc -dmT'
alias f='ranger'
alias l='locate'
alias q='exit'
alias s='sudo -E'
alias v='nvim'
alias python='bpython'

# Global Aliases
alias -g P='| pygmentize -f terminal256 -P style=monokai -l'
alias -g L='| less'
alias -g G='| grep'
alias -g NE='2>/dev/null' # No sterr.
alias -g NO='&>/dev/null' # No stout and sterr (shorthand for 1>/dev/null 2>&1).

# Yay
alias y='yay'
alias yn='yay --noconfirm'
alias yun='yay -Yc'
alias yst='yay -Ps'
alias ys='yay -S'
alias ysn='yay -S --noconfirm'
alias yr='yay -Rns'
alias yrn='yay -Rns --noconfirm'
alias yi='yay -Si'

# Git
alias g='git'
alias gr='git clone $(pbpaste)'
alias gs='git status -sb'
alias gf='git fetch'
alias gc='git commit'
alias gb='git branch'
alias gbl='git branch -vv -a'
alias gco='git checkout'
alias gsm='git submodule'
alias gd='git diff'
alias gdt='git difftool'
alias gds='git diff --staged'
alias gl='git log \
	--graph \
	--abbrev-commit \
	--decorate \
	--format=format:"%C(yellow)%h%C(reset) %C(white)%s%C(reset) %C(blue)<%an>%C(reset)%C(bold yellow)%d%C(reset) %C(green)%ar%C(reset)" \
	--all'
alias glt='git log \
	--graph \
	--abbrev-commit \
	--decorate \
	--format=format:"%C(bold white)%ad%C(reset) %C(yellow)%h%C(reset) %C(white)%s%C(reset) %C(blue)<%an>%C(reset)%C(bold yellow)%d%C(reset) %C(green)%ar%C(reset)" \
	--date=format:"%Y-%m-%d %H:%M" \
	--all'
