##
# Show notes from audio files.
#
# @param {string} $1 Audio file that will be played.
##

pcat (){
  if $2
  then
      pygmentize -g $1 | cat
  else
      pygmentize -g $2 | cat $1
  fi
}

pless (){
  pygmentize -g $1 | less
}

notes() {
	ffplay -hide_banner -f lavfi \
		"amovie='$1', asplit [a][out1]; [a] showcqt=size=1400x1052 [out0]";
}

##
# Dictionary formatted for best read.
#
# @param {string} $1 Word to get definition.
##
def() {
sdcv $1 | awk '{
			for (i=1; i <= NF; i++) {
				if (match($i, /[0-9]:/)) {
					printf ("\033[0m\n\n");
				} else if (match($i, "^\"")) {
					printf ("\033[33m\n");
				} else if (match($i, /\[syn:/) || match($i, /\[also:/) || match($i, /\[ant:/)) {
					printf ("\033[0;37m\n");
				}
				printf ("%s ", $i);
			}
		   }' |
 fold -s -w 80 | awk '{
				if (match($i, /[\"{\[]/)) {
					printf ("\n\t\t%s", $0);
				} else {
					printf ("\n\t%s", $0);
				}
			}' | less -r
}

##
# Makes directory and 'cd' into it.
#
# @param {string} $1 Directory name that will be created.
##
function mkcd() {
	command mkdir --parents --verbose "$1" && cd "$1"
}

##
# List and find file.
#
# $param {string} $1 File or directory name in current directory.
##
function lsg() {
	ls | ag "$1"
}

##
#
# Better 'git log' with 'fzf'.
##
function fgl() {
	git log --graph --color=always --format='%C(auto)%h%d %s %C(black)%C(bold)%cr' "$@" \
		| fzf \
			--height='100%' \
			--ansi \
			--exact \
			--no-sort \
			--reverse \
			--tiebreak='index' \
			--bind='ctrl-s:toggle-sort' \
			--bind='enter:execute: (grep -o "[a-f0-9]\{7\}" | head -1 | xargs -I % sh -c "git show --color=always % | less -R") <<< {}'
}

##
# Better 'cd ../../..' with autocomplete
#
# @param {(string|number)} $1 Partial parent directory string or direct number.
##
function ..() {
	if (( ! $# )) {
		cd ..
		return 0
	}

	function __upnum() {
		if [[ "$1" == '' || "$2" == '' || ! "$2" =~ ^[0-9]+$ ]] {
			return 0
		}

		local p="$1"
		local i="$2"

		while (( i-- )) {
			p="$(dirname $p)"
		}

		echo "$p"
	}

	function __updir() {
		if [[ "$1" == '/' || "$1" == '' || "$2" == '' ]] {
			return 0
		}

		local p="$(dirname $1)"
		local a="$(basename $p)"
		local b="$(basename $2)"

		if [[ "$a" == '' || "$b" == '' ]] {
			return 0
		}

		if [[ "$a" == "$b"* ]] {
			echo "$p"; return 0
		}

		__updir "$p" "$2"
	}

	local d="$(__updir "$PWD" "$1")"
	if [[ -d "$d" ]] {
		cd "$d"
		return 0
	}

	local n="$(__upnum "$PWD" "$1")"
	if [[ -d "$n" ]] {
		cd "$n"
		return 0
	}
}

##
# Bookmark manager.
#
# @param {string} [$1] Defined bookmark string.
##
function b() {
	# Bookmarks
	local -A bookmarks=(
		'b' "~/Books/"
		'e' "~/Desktop/"
		'd' "~/Documents/"
		'w' "~/Downloads/"
		'i' "~/Pictures/"
		'p' "~/Projects/"
		'v' "~/Videos/"
	)

	local selected_bookmark

	if [[ "$1" != '' ]] {
		selected_bookmark="${bookmarks[$1]}"
	} else {
		local bookmarks_table

		local key
		foreach key (${(k)bookmarks}) {
			bookmarks_table+="$key ${bookmarks[$key]}\n"
		}

		if (! hash fzf &>/dev/null) {
			return 1
		} else {
			selected_bookmark=$(
				printf "$bookmarks_table" \
					| fzf \
						--exact \
						--height='20%' \
						--preview='eval ls --almost-all --classify --color=always --group-directories-first $(echo {} | cut --delimiter=" " --field=2 -) 2>/dev/null' \
						--preview-window='right:65%' \
					| cut --delimiter=' ' --fields=2
			)
		}
	}

	if [[ "$selected_bookmark" != '' ]] {
		eval cd "$selected_bookmark"
	} else {
		return 1
	}
}

##
# `fasd` with `fzf`.
##
function fz() {
	local selected_path=$(
		fasd -l -d \
		| sed "s#$HOME#~#" \
		| fzf \
			--tac \
			--no-sort \
			--exact \
			--prompt='cd ' \
			--preview-window='right:60%' \
			--preview='eval ls --almost-all --classify --color=always --group-directories-first --literal {} 2>/dev/null'
	)

	eval cd "$selected_path"
}

##
# Shotcut to write logbook
##
function lb() {
	local name=${1:-$(date '+%Y-%m-%d')}
	vim ~/Documents/logbook/$name.txt
}
