function! s:goyo_enter()
  set scrolloff=999
  set nocursorline
  " ...
endfunction

function! s:goyo_leave()
  set scrolloff=5
  set cursorline
  " ...
endfunction

augroup GoyoSettings
	autocmd! User GoyoEnter nested call <SID>goyo_enter()
	autocmd! User GoyoLeave nested call <SID>goyo_leave()
augroup END

nnoremap <space>g :packadd goyo.vim<Enter> :Goyo<Enter>
