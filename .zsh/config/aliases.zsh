# Core shotcuts
alias _='sudo'
alias updb='sudo updatedb'
alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias q='exit'
#alias c='clear'
alias erase='command rm'
alias rm='trash' # Use 'trash' to have more control for your deleted files.
alias mv='mv --interactive --verbose'
alias cp='cp --interactive --verbose'
alias ln='ln --interactive --verbose'
alias mkdir='mkdir -p' # Make parentes.
alias dirs='dirs -v -p' # Print directory stack to use with '..' function.
alias ls='ls --almost-all --classify --color=always --group-directories-first --ignore=.pki --ignore=.thumbnails --ignore=.icons --ignore=.gtkrc-2.0 --ignore=.esd_auth --ignore=eclipse-workspace --ignore=.npm --ignore=.gnupg --ignore=.ssh --ignore=.tooling --ignore=.eclim --ignore=.gradle --ignore=.swt --ignore=.eclipse --ignore=.npmrc --ignore=workbench.xmi --ignore=.fasd --ignore=.fehbg --ignore=Xauthority --ignore=.gitmodules --ignore=.dircolors --ignore=.mono'
alias ll='ls -l'
alias lsd="command ls -A --classify | grep '/' | column"
alias lsf='command ls -A --classify | grep --invert-match '/$' | column'
alias cls='clear;ls' # clear and list files.
alias f='pcmanfm "$PWD"' # Open current directory.
alias path="echo $PATH | cut --delimiter=':' --fields=1- --output-delimiter=$'\n'"
alias ag='ag --smart-case --pager="less"'
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"
alias top="top -Hi"

# Global Aliases
alias -g P='| pygmentize -f terminal256 -P style=monokai -l'
alias -g L='| less'
alias -g G='| grep'
alias -g NE='2>/dev/null' # No sterr.
alias -g NO='&>/dev/null' # No stout and sterr (shorthand for 1>/dev/null 2>&1).

# Pacman
alias pacupg='sudo pacman -Syu'
alias pacin='sudo pacman -S'
alias pacins='sudo pacman -U'
alias pacre='sudo pacman -R'
alias pacrem='sudo pacman -Rns'
alias pacrep='pacman -Si'
alias pacreps='pacman -Ss'
alias pacloc='pacman -Qi'
alias paclocs='pacman -Qs'
alias pacinsd='sudo pacman -S --asdeps'
alias pacmir='sudo pacman -Syy'
alias paclsorphans='sudo pacman -Qdt'
alias pacrmorphans='sudo pacman -Rs $(pacman -Qtdq)'
alias pacfileupg='sudo pacman -Fy'
alias pacfiles='pacman -Fs'
alias pacls='pacman -Ql'
alias pacown='pacman -Qo'

# Yaourt
alias yaconf='yaourt -C'
alias yaupg='yaourt -Syua'
alias yasu='yaourt -Syua --noconfirm'
alias yain='yaourt -S'
alias yains='yaourt -U'
alias yare='yaourt -R'
alias yarem='yaourt -Rns'
alias yarep='yaourt -Si'
alias yareps='yaourt -s'
alias yaloc='yaourt -Qi'
alias yalocs='yaourt -Qs'
alias yalst='yaourt -Qe'
alias yaorph='yaourt -Qtd'
alias yainsd='yaourt -S --asdeps'
alias yamir='yaourt -Syy'

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
alias gcr='git clone $(pbpaste)'
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
	--format=format:"%C(yellow)%h%C(reset) %C(white)%s%C(reset) %C(blue)<%an>%C(reset)%C(bold yellow)%d%C(reset) %C(black)%ar%C(reset)" \
	--all'
alias glt='git log \
	--graph \
	--abbrev-commit \
	--decorate \
	--format=format:"%C(bold black)%ad%C(reset) %C(yellow)%h%C(reset) %C(white)%s%C(reset) %C(blue)<%an>%C(reset)%C(bold yellow)%d%C(reset) %C(black)%ar%C(reset)" \
	--date=format:"%Y-%m-%d %H:%M" \
	--all'
function ga() { git add "$@" && git status -sb }

