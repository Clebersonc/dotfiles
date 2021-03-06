
""
" Open file explorer if argument list contains at least one directory.
"
" autocmd VimEnter * call autocmds#openexplorer#()
""
function! autocmds#openexplorer#() abort
	let l:directory = expand('<amatch>')

	if isdirectory(l:directory)
		execute printf('cd %s', fnameescape(l:directory))

		try
			packadd nerdtree
			NERDTree
			only
		catch
		endtry
	endif
endfunction
