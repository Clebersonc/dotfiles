""
" Java docs engine.
""

" Load optional plugin for appropriate file types.
augroup loaddasht
	autocmd!
	autocmd FileType java packadd vim-dasht
augroup end


" search related docsets for word under cursor
nnoremap <silent> <Leader>d :call Dasht([expand('<cword>'), expand('<cWORD>')])<Return>
