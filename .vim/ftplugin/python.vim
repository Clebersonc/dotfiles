packadd jedi-vim
packadd ncm2-jedi
packadd semshi

" Map to use jedi autocomplete with ultisnips.
imap <silent><expr> <c-u> IsExpandable() ? "\<C-R>=UltiSnips#ExpandSnippet()\<Enter>" : "\<Plug>(ncm2_manual_trigger)"

" Run python current file.
nnoremap <buffer><silent> <LocalLeader>r :execute 'split <Bar> terminal python %'<Enter>
