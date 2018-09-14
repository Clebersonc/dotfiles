""
" Visualize undo tree.
""

" Add optional plugin to 'runtimepath' without sourcing anything.
packadd! gundo

" set diff window width.
let g:gundo_width = 30

" set preview window height.
let g:gundo_preview_height = 10

" Open window on right side.
let g:gundo_right = 1

" Preview window on bottom left.
let g:gundo_preview_bottom = 1

" Disable status line on both windows.
let g:gundo_preview_statusline = ' '
let g:gundo_tree_statusline = ' '

" Mapping to open Gundo.
nnoremap <silent> <Leader>u :packadd gundo.vim<Enter> :call gundo#GundoToggle()<Enter>
