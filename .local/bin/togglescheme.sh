#!/bin/zsh
islight=$(ag light ~/.config/i3/config)
echo $islight
if [[ $islight != '' ]] {
	rpl light dark ~/.vim/plugin/settings.vim
	wal -i
    pywal --theme /home/ctroy/.colors/light/base16-gruvbox-hard.json
} else {
	rpl dark light ~/.vim/plugin/settings.vim
	wal -i ~/Pictures/wallpaper/dark.jpg
    pywal --theme /home/ctroy/.colors/light/base16-gruvbox-hard.json
}
