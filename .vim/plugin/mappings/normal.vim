" Pane nagivation.
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l


tnoremap <silent> <C-z> <C-\><C-n>:call mappings#normal#terminal#()<Enter>
nnoremap <silent> <C-z> :call mappings#normal#terminal#()<Enter>

" Always search with 'very magic' mode.
nnoremap / /\v
nnoremap ? ?\v

" Set highlight search when navigate on searching matchers.
nnoremap n :silent set hlsearch <Bar> normal! n<Enter>
nnoremap N :silent set hlsearch <Bar> normal! N<Enter>

" Override Ex mode with run @q.
nnoremap Q @q

" Alternative beginning and end of line mappings.
nnoremap H ^
xnoremap H ^
onoremap H ^
nnoremap L $
xnoremap L g_
onoremap L $

" Always send contents of a `x` command to the black hole register.
nnoremap x "_x

" Make `Y` acting like `C`, `D`.
nnoremap Y y$

" Refactor word under cursor.
nnoremap c* *``cgn
nnoremap c# #``cgN

" Use `s` for registers.
nnoremap s "

" Lookup definition under cursor.
nnoremap gt K
xnoremap gt K

" Correct bad indent while pasting.
nnoremap [p P=`]
nnoremap ]p p=`]

" Scroll viewport faster.
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

" Select last changed or yanked area.
nnoremap <expr> gV '`[' . strpart(getregtype(), 0, 1) . '`]'

" Construct grep search.
nnoremap gs :Search ''<Left>
nnoremap gS :Search! ''<Left>

" Store relative line number jumps in the jumplist if they exceed a threshold.
nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'

" Toggle zoom current buffer in the new tab.
nnoremap <silent> gz :call mappings#normal#zoom#()<Enter>

" Open URL under cursor in browser or open path in GUI explorer.
nnoremap <silent> gB :execute printf('silent !xdg-open "%s" 2>/dev/null', expand('<cfile>'))<Enter>

" Disable highlight search.
nnoremap <silent> <ESC> :set nohlsearch<Enter>

" Toggle common options.
nnoremap <silent> cos :set spell!<Enter>
nnoremap <silent> cow :set wrap!<Enter>
nnoremap <silent> coh :set hlsearch!<Enter>
nnoremap <silent> col :set list!<Enter>
nnoremap <silent> cop :set paste!<Enter>

" Add [count] blank lines above or below the cursor.
nnoremap [<Space> :<C-u>put! =repeat(nr2char(10), v:count1) <Bar> ']+1<Enter>
nnoremap ]<Space> :<C-u>put =repeat(nr2char(10), v:count1) <Bar> '[-1<Enter>


" Navigation mappings for [l]ocation list.
nnoremap <silent> =ol :lopen<Enter>
nnoremap <silent> [l :lprevious<Enter>
nnoremap <silent> ]l :lnext<Enter>
nnoremap <silent> [L :lpfile<Enter>
nnoremap <silent> ]L :lnfile<Enter>
nnoremap <silent> [<C-l> :lfirst<Enter>
nnoremap <silent> ]<C-l> :llast<Enter>

" Navigation mappings for [b]uffer list.
nnoremap <silent> =ob :buffers!<Enter>
nnoremap <silent> [b :bprevious<Enter>
nnoremap <silent> ]b :bnext<Enter>
nnoremap <silent> [B :bfirst<Enter>
nnoremap <silent> ]B :blast<Enter>

" Navigation mappings for [a]rgument list.
nnoremap <silent> =oa :args<Enter>
nnoremap <silent> [a :previous<Enter>
nnoremap <silent> ]a :next<Enter>
nnoremap <silent> [A :first<Enter>
nnoremap <silent> ]A :last<Enter>

" Navigation mappings for [t]abs.
nnoremap <silent> =ot :tabs<Enter>
nnoremap <silent> [t :tabprevious<Enter>
nnoremap <silent> ]t :tabnext<Enter>

" Navigation mappings for ta[g]s.
nnoremap <C-]> g<C-]>
nnoremap <silent> =og :tags<Enter>
nnoremap <silent> [g :pop<Enter>
nnoremap <silent> ]g :tag<Enter>
