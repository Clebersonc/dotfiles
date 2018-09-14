" locate eclim for correct file type.
augroup loadeclim
	autocmd!
	autocmd FileType vim packadd neco-vim
augroup end

if !exists('g:necovim#complete_functions')
	let g:necovim#complete_functions = {}
endif
let g:necovim#complete_functions.Ref =
\ 'ref#complete'
