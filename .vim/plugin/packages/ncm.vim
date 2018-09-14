""
" Asynchronous auto-completion framework for Neovim.
""

" Load optional plugin only for Neovim.
"if has('nvim')
"jj
"	packadd ncm
"endif
"
" Enable the NCM for buffers automatically.
let g:cm_smart_enable=1

" Disable automatic popup.
let g:cm_auto_popup = 0

" Navigate on completations options.
inoremap <expr> <c-j> pumvisible() ? "\<C-n>" : "\<c-j>"
inoremap <expr> <c-k> pumvisible() ? "\<C-p>" : "\<c-k>"


function IsExpandable()
	execute 'packadd ultisnips'
	return !empty(UltiSnips#SnippetsInCurrentScope())
endfunction

" Open completation options or expand snippet.
imap <expr> <c-u> IsExpandable() ? "\<Plug>(ultisnips_expand)" : "\<Plug>(ncm2_complete_popup)"
