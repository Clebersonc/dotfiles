" Shortcuts for quiting.
nnoremap <silent> <Leader>q :quit!<Enter>
nnoremap <silent> <Leader>Q :quitall<Enter>

" Set directory to current buffer.
nnoremap <silent> <Leader>c :call mappings#leader#setdir#()<Enter>

" Toggles between last buffer.
nnoremap <silent> <Leader><CR> :e #<CR>
