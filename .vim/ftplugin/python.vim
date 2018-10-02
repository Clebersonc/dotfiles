packadd jedi

" Map to use jedi autocomplete with ultisnips.
imap <expr> <c-u> IsExpandable() ? "\<Plug>(ultisnips_expand)" : "\<C-x>\<C-o>"
