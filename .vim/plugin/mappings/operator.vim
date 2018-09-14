" Comment and uncomment operator.
nnoremap <silent> gc :<C-u>set opfunc=mappings#operator#comment#<Enter>g@
xnoremap <silent> gc :<C-u>call mappings#operator#comment#(visualmode())<Enter>
