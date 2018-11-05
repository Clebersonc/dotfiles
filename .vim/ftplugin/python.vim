packadd jedi-vim
packadd semshi

" Map to use jedi autocomplete with ultisnips.
imap <expr> <c-u> IsExpandable() ? "\<C-R>=UltiSnips#ExpandSnippet()\<Enter>" : "\<C-x>\<C-o>"
