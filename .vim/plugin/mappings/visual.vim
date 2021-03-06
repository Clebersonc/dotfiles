" Stay in visual mode when indenting.
xnoremap < <gv
xnoremap > >gv

" Always search with 'very magic' mode.
xnoremap / /\v
xnoremap ? ?\v

" Use `s` for registers.
xnoremap s "

" Execute a macro over visual selection.
xnoremap <silent> @ :<C-u>execute printf("'<,'>normal! @%s", nr2char(getchar()))<Enter>

" Bubble lines in visual line mode, jump in character-wise visual mode.
xnoremap <expr> J mode() ==# 'V' ? ":move '>+1<Enter>gv=gv" : '5j'
xnoremap <expr> K mode() ==# 'V' ? ":move '<-2<Enter>gv=gv" : '5k'
