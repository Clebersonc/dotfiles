packadd vim-love-docs

" Run lua file
" nnoremap <buffer><silent> <LocalLeader>r :execute 'split <Bar> terminal lua %'<Enter>

" Run LÖVE game
nnoremap <buffer><silent> <LocalLeader>r :silent execute '!love ~/Documents/development/games/dev/love/bytepath'<Enter>
nnoremap <buffer><silent> <LocalLeader>d :execute 'split <Bar> terminal love ~/Documents/development/games/dev/love/bytepath'<Enter>

inoremap <silent><expr> <c-u> IsExpandable() ? "\<C-R>=UltiSnips#ExpandSnippet()\<Enter>" : "\<C-x>\<C-u>"
