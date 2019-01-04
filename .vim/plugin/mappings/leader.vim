" Shortcuts for quiting.
nnoremap <silent> <Leader>q :quit!<Enter>
nnoremap <silent> <Leader>Q :quitall<Enter>

" Set directory to current buffer.
nnoremap <silent> <Leader>c :call mappings#leader#setdir#()<Enter>

" Toggles between last buffer.
nnoremap <silent> <Leader><CR> :e #<CR>

nnoremap <silent> <Leader>B :let &background = ( &background == "dark"? "light" : "dark" )<CR>

nnoremap <silent> <Leader>p "+p
nnoremap <silent> <Leader>P "+P

nnoremap <silent> <Leader>y "+y
