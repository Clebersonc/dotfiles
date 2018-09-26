scriptencoding UTF-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    [1]     [2]        [3]      [4]                    [5]       [6]       "
"   0 ⚠ 0  plugin/statusline.vim                   master   02/26 / 32 "
"  -------  ------ -------------- -                   --------  --------	"
"     |_      |__     |______     |___                   |__       |_      	"
"       |        |           |__      |                     |        |     	"
"       |       fileprefix()    |     |                   git()      |     	"
"      linter()                 %t   filetypesymbol()            %l/%L:%c  	"
"                                                                          	"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" [1] Linter status, error and warnings count with Unicode symbols.
set statusline+=%{repeat('\ ',4)} " Generate space characters given number of times.
set statusline+=%{statusline#linter()}
set statusline+=%{repeat('\ ',4)}

" Truncate lines to left if they are too long.
set statusline+=%<

" [2] Relative path to file's directory with trailing '/'.
set statusline+=%{statusline#fileprefix()}

" [3] File name for current buffer.
"set statusline+=%t

" [4] FileType Unicode symbol.
set statusline+=%{repeat('\ ',1)}
set statusline+=%{statusline#filetypesymbol()} " Install devicons to get filetype icon.

" Align all items to right from this point on.
set statusline+=%=

" Markdown preview icon indicator.
set statusline+=%{statusline#markdownpreview()}
set statusline+=%{repeat('\ ',4)}

" [6] Git HEAD status.
set statusline+=%{statusline#git()}
set statusline+=%{repeat('\ ',4)}

" [7] Line numbers and column numbers in <Line>:<Column> format.
set statusline+=%02l/%02c
set statusline+=%{statusline#spell()} " Show icon for spell option.
set statusline+=%02L
set statusline+=%{repeat('\ ',2)}

