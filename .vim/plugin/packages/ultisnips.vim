" Directory for snippets files.
let g:UltiSnipsSnippetsDir= [$HOME . '/.vim/snippet']
let g:UltiSnipsSnippetDirectories=['snippet']

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Trigger configuration.
" let g:UltiSnipsExpandTrigger		= '<Plug>(ultisnips_expand)'
let g:UltiSnipsJumpForwardTrigger	= '<tab>'
let g:UltiSnipsJumpBackwardTrigger	= '<s-tab>'
let g:UltiSnipsRemoveSelectModeMappings = 0

" Navigate on completations options.
inoremap <expr> <c-j> pumvisible() ? "\<C-n>" : "\<c-j>"
inoremap <expr> <c-k> pumvisible() ? "\<C-p>" : "\<c-k>"

" Function to toggle with an autocomplete map key.
function IsExpandable()
	execute 'packadd UltiSnips'
	return !empty(UltiSnips#SnippetsInCurrentScope())
endfunction
