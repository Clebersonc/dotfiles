" Directory for snippets files.
let g:UltiSnipsSnippetsDir= [$HOME . '/.vim/snippet']
let g:UltiSnipsSnippetDirectories=['snippet']

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Trigger configuration.
let g:UltiSnipsExpandTrigger		= '<Plug>(ultisnips_expand)'
let g:UltiSnipsJumpForwardTrigger	= '<tab>'
let g:UltiSnipsJumpBackwardTrigger	= '<s-tab>'
let g:UltiSnipsRemoveSelectModeMappings = 0

" Navigate on completations options.
inoremap <expr> <c-j> pumvisible() ? "\<C-n>" : "\<c-j>"
inoremap <expr> <c-k> pumvisible() ? "\<C-p>" : "\<c-k>"

 function IsExpandable()
	execute 'packadd ultisnips'
	return !empty(UltiSnips#SnippetsInCurrentScope())
endfunction

 " Open completation options or expand snippet.
imap <expr> <c-u> IsExpandable() ? "\<Plug>(ultisnips_expand)" : "\<C-x>\<C-u>"
