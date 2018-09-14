" Search text in git repository or current working directory.
command -nargs=1 -bang Search call commands#search#(<bang>v:false, <args>)

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W w !sudo tee % > /dev/null

