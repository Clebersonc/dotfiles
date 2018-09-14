setl laststatus=0 noshowmode noruler
augroup leavefzf
  autocmd!
  autocmd BufLeave <buffer> set laststatus=2 ruler
augroup END

