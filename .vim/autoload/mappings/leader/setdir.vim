""
" Change to directory of the current buffer.
"
" nnoremap <silent> <Leader>c :call mappings#leader#setdir()<Enter>
""
function! mappings#leader#setdir#() abort

	let l:basedir = expand('%:p:h')
	silent execute 'lcd' l:basedir
	let l:basedir = expand('%:p:h')
	echo 'Current dir: ' . l:basedir
    if exists('t:NERDTreeBufName')
		execute ':NERDTree' l:basedir
    endif
	execute ':wincmd l'
	redraw
endfunction
