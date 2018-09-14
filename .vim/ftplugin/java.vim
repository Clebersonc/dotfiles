" Load plugins when enter a java file.
"packadd eclim
"packadd nvim-cm-eclim

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
