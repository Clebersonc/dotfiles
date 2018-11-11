" Enable ncm2 to all buffers.
augroup NCM2BUFFER
    au!
	au BufEnter * call ncm2#enable_for_buffer()
augroup END

" Default map for trigger completions.
imap <silent><expr> <c-u> "\<Plug>(ncm2_manual_trigger)"

" inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
" Disable auto popup.
let g:ncm2#auto_popup = 0

" ncm2-look
let g:ncm2_look_enabled = 1
let g:ncm2_look_mark = 'dict'
