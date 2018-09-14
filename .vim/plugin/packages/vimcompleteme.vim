autocmd FileType java,vim let b:vcm_tab_complete = 'eclim#java#complete#CodeComplete'
" let b:vcm_tab_complete = 'omni'

set completeopt-=preview
set completeopt+=menu,menuone,noinsert,noselect
set shortmess+=c
