""
" Print current and total search matches.
" Stolen from google/vim-searchindex.
""

function! searchindicator#print()

	let [l:current, l:total] = s:MatchCounts()
	let msg = l:current . '/' . l:total
	return l:msg

endfunction

function! s:MatchCounts()
  let win_view = winsaveview()
  let in_line = s:MatchInLine()

  let before = (line('.') == 1 ? 0 : s:MatchesInRange('1,-1'))
  let total = before + s:MatchesInRange(',$')

  call winrestview(win_view)

  return [before + in_line, total]
endfunction

" Calculate which match in the current line the 'col' is at.
function! s:MatchInLine()
  let line = line('.')
  let col = col('.')

  normal! 0
  let matches = 0
  let s_opt = 'c'
  while search(@/, s_opt, line) && col('.') <= col
    let matches += 1
    let s_opt = ''
  endwhile

  return matches
endfunction

" Efficiently recalculate number of matches above cursor using values cached
" from the previous run.
function s:MatchesAbove(cached_values)
  if line('.') == 1 | return 0 | endif

  let [old_line, old_result, total] = a:cached_values
  let line = line('.')
  let to_top = line
  let to_old = abs(line - old_line)
  let to_bottom = line('$') - line
  let min_dist = min([to_top, to_old, to_bottom])

  if min_dist == to_top
    return s:MatchesInRange('1,.-1')
  elseif min_dist == to_bottom
    return total - s:MatchesInRange(',$')
  elseif old_line < line
    return old_result + s:MatchesInRange(old_line . ',-1')
  elseif old_line > line
    return old_result - s:MatchesInRange(',' . (old_line - 1))
  else " old_line == line
    return old_result
  endif
endfunction

function! s:MatchesInRange(range)
  let gflag = &gdefault ? '' : 'g'
  let saved_marks = [ getpos("'["), getpos("']") ]
  let output = ''
  redir => output
    silent! execute 'keepjumps ' . a:range . 's///en' . gflag
  redir END
  call setpos("'[", saved_marks[0])
  call setpos("']", saved_marks[1])
  return str2nr(matchstr(output, '\d\+'))
endfunction

