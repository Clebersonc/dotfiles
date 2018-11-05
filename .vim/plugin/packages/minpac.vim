" For a paranoia.
" Normally `:set nocp` is not needed, because it is done automatically
" when .vimrc is found.
if &compatible
  " `:set nocp` has many side effects. Therefore this should be done
  " only when 'compatible' is set.
  set nocompatible
endif

function! PackInit() abort
  packadd minpac
  " minpac is loaded.
  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})
  call minpac#add('lilydjwg/colorizer', {'type': 'opt'})
  call minpac#add('SirVer/UltiSnips', {'type': 'opt'})
  call minpac#add('sunaku/vim-dasht', {'type': 'opt'})
  call minpac#add('sjl/gundo.vim', {'type': 'opt'})
  call minpac#add('davidhalter/jedi-vim', {'type': 'opt'})
  call minpac#add('scrooloose/nerdtree', {'type': 'opt'})
  call minpac#add('flipcoder/vim-textbeat', {'type': 'opt'})
  call minpac#add('airodactyl/neovim-ranger', {'type': 'opt'})
  call minpac#add('dansomething/vim-eclim', {'type': 'opt'})

  " Additional plugins here.
  call minpac#add('w0rp/ale')
  call minpac#add('yuttie/comfortable-motion.vim')
  call minpac#add('editorconfig/editorconfig-vim')
  call minpac#add('junegunn/fzf.vim')
  call minpac#add('lambdalisue/gina.vim')
  call minpac#add('ryanoasis/vim-devicons')
  call minpac#add('mhinz/vim-signify')
  call minpac#add('flipcoder/vim-textbeat')
  call minpac#add('mhinz/vim-startify')
  call minpac#add('rhysd/vim-grammarous')

endfunction

" Plugin settings here.

" Define user commands for updating/cleaning the plugins.
" Each of them loads minpac, reloads .vimrc to register the
" information of plugins, then performs the task.
command! PackUpdate call PackInit() | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  packadd minpac | call minpac#clean()
command! PackStatus packadd minpac | call minpac#status()
