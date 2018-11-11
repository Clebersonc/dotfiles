" Load plugins when enter a java file.
packadd vim-eclim
"packadd nvim-cm-eclim

set makeprg=javac
set shellpipe=2>
set errorformat=%A%f:%l:\ %m,%C%m

" Map to use eclim auto-complete with utisnips.
imap <expr> <c-u> IsExpandable() ? "\<C-R>=UltiSnips#ExpandSnippet()\<Enter>" : "\<C-x>\<C-u>"


" Gradle project mappings for run single java file, single test or build project.
nnoremap <buffer><silent> <LocalLeader>b :execute 'split <Bar> terminal gradle clean build --info'<CR>
nnoremap <buffer><silent> <LocalLeader>t :execute 'split <Bar> terminal gradle test --info'<Enter>
nnoremap <buffer><silent> <LocalLeader>r :execute 'split <Bar> terminal java -cp ~/eclipse-workspace/exercises/build/classes/java/main %:t:r'<Enter>

" config for java.
set si
set cinoptions+=j1
let java_comment_strings=1
let java_highlight_java_lang_ids=1
let java_mark_braces_in_parens_as_errors=1
let java_highlight_all=1
let java_ignore_javadoc=1
let java_minlines = 150
let lace_case_insensitive=1
"setlocal omnifunc=javacomplete#Complete

hi javaFuncDef guifg=#b8bb26
hi javaParen guifg=#909090
hi javaOperator guifg=#fabd2f
hi javaType guifg=#8f3f71
hi javaConstant guifg=#076678
hi javaNumber guifg=#d3869b
hi javaString guifg=#427b58
hi javaAnnotation guifg=#b8bb26
hi javaExternal guifg=#b8bb26
hi javaBoolean guifg=#b8bb26
hi javaScopeDecl guifg=#cc241d
hi javaStorageClass guifg=#cc241d
hi javaClassDecl guifg=#cc241d
hi javaConditional guifg=#d65d0e
hi javaRepeat guifg=#d65d0e
hi javaTypedef guifg=#d65d0e
hi javaStatement guifg=#d65d0e
hi javaExceptions guifg=#d65d0e
hi javaAssert guifg=#d65d0e

