""
" Fuzzy finder fzf as Vim plugin.
""

" Add prefix 'Fzf' commands for grouping.
let g:fzf_command_prefix = 'F'

" Jump to the existing window if possible.
let g:fzf_buffers_jump = 1

" Directly execute the command without appending anything.
let g:fzf_commands_expect = 'alt-enter'

" Set custom layout.
let g:fzf_layout = {
	\ 'window': 'silent 18split enew'
\ }

" Set actions manually.
let g:fzf_action = {
	\ 'ctrl-e': 'split',
	\ 'ctrl-v': 'vsplit'
\ }

" History directory.
let g:fzf_history_dir = $HOME . '/.vim/cache/share/fzf/'

" Customize `fzf` colors to match current color scheme.
let g:fzf_colors = {
	\ 'fg': ['fg', 'Normal'],
	\ 'bg': ['bg', 'Normal'],
	\ 'hl': ['fg', 'Comment'],
	\ 'fg+': ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
	\ 'bg+': ['bg', 'CursorLine', 'CursorColumn'],
	\ 'hl+': ['fg', 'Statement'],
	\ 'info': ['fg', 'Comment'],
	\ 'border': ['fg', 'Ignore'],
	\ 'prompt': ['fg', 'Conditional'],
	\ 'pointer': ['fg', 'Exception'],
	\ 'marker': ['fg', 'Keyword'],
	\ 'spinner': ['fg', 'Label'],
	\ 'header': ['fg', 'Comment']
\ }

" Define key mappings.
nnoremap <silent> <C-p> :FFiles<Enter>
nnoremap <silent> <Leader><C-p> :FGFiles<Enter>
nnoremap <silent> <M-x> :FCommands<Enter>
nnoremap <silent> <C-j> :FBuffers<Enter>
nnoremap <silent> <Leader>h :FHistory<Enter>
nnoremap <silent> <Leader>: :FHistory:<Enter>
nnoremap <silent> <Leader>/ :FHistory/<Enter>
nnoremap <silent> <Leader>' :FMarks<Enter>
nnoremap <silent> <Leader>l :FLocate ''<Enter>
nnoremap <silent> <Leader>m :FMaps<Enter>
nnoremap <silent> <Leader>t :FTags<Enter>
nnoremap <silent> <Leader>s :FLines<Enter>
nnoremap <silent> <Leader>a :call fzf#vim#ag('',
      \                 fzf#vim#with_preview('right:50%'),
      \                 0)<Enter>

