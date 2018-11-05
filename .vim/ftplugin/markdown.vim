" Enable spell checking.
setlocal spell

" Wrap lines longer than the width of the window.
setlocal wrap

" Disable all line numbers.
setlocal nonumber
setlocal norelativenumber

" Preview markdown with `grip`.
nnoremap <buffer><silent> <LocalLeader>r :call system('grip --export ' . expand('%:p') . ' && qutebrowser ' . expand('%:p:r') . '.html')<Enter>

" Delete .html file created by `grip` when leave buffer.
augroup AutoDeleteHtml
	autocmd!
	autocmd BufWinLeave,BufLeave,BufWritePost ?* nested call delete(expand('%:p:r') . '.html')<Enter>
augroup END
