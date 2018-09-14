" Change encoding to utf-8.
let g:startify_fortune_use_unicode = 1

" Padding for startify menu.
let g:startify_padding_left = 15

" When opening a file or bookmark, change to its directory.
let g:startify_change_to_dir = 0

" Simple status line that display 'Startify '.
augroup startifystatusline
	autocmd!
	let s:s=repeat(' ',15) " Generate space characters given number of times.
	autocmd User Startified let &l:stl = s:s . 'Startify '
augroup end

" A list of files or directories to bookmark.
let g:startify_bookmarks = [
        \ { 'c': '~/.vim/vimrc' },
        \ { 'p':'~/eclipse-workspace/exercises/build.gradle' },
        \ ]

" Enable icons using devicons.
function! StartifyEntryFormat()
	return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

" Change name for menu options.
let g:startify_list_order = [
            \ ['   Recent Files:'],
            \ 'files',
            \ ['   Project:'],
            \ 'dir',
            \ ['   Sessions:'],
            \ 'sessions',
            \ ['   Bookmarks:'],
            \ 'bookmarks',
            \ ['   Commands:'],
            \ 'commands',
            \ ]

augroup startifysettings
	autocmd!

	" Set common options.
	autocmd User Startified
		\ setlocal
			\ nolist
			\ cursorline
			\ signcolumn=no
			\ conceallevel=3 concealcursor=nvic
			\ nonumber
augroup end


" function to center custom header, add 30 spaces.
function! s:filter_header(lines) abort
	let l:centered_lines = map(copy(a:lines), 'repeat(" ", 18) . v:val')
	return l:centered_lines
endfunction

" Custom header for startify menu with neovim version.
let s:custom_header = [
	\ '      ____               @@@  @@@      @@@      @@@@@@@@@@                 ____',
	\ '    ,"   Y`.             @@@  @@@      @@@      @@@@@@@@@@@              ,"   Y`.',
	\ '   /        \            @@!  @@@      @@!      @@! @@! @@!             /        \',
	\ '   \ ()  () /            !@!  @!@      !@!      !@! !@! !@!             \ ()  () /',
	\ '    ". /\ ,"             @!@  !@!      !!@      @!! !!@ @!@              ". /\ ,"',
	\ '8====| "" |====8         !@!  !!!      !!!      !@!   ! !@!          8====| "" |====8',
	\ '     `LLLU"              :!:  !!:      !!:      !!:     !!:               `LLLU"',
	\ '                          ::!!:!       :!:      :!:     :!:',
	\ '                            ::::        ::       :::     ::',
	\ '                             :           :         :      :',
	\ ]
let g:startify_custom_header = s:filter_header(s:custom_header)
