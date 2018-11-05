" Opening ranger instead of netrw when you open a directory.
let g:ranger_replace_netrw = 1

" Define mappings.
nnoremap <silent> <Leader>f :packadd ranger.vim <Bar> Ranger <Enter>
nnoremap <silent> <Leader>F :packadd ranger.vim <Bar> RangerCurrentDirectory <Enter>
