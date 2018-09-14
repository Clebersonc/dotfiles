" Local command-line window settings.
augroup commandlinewindow
	autocmd!
	autocmd CmdwinEnter * setlocal signcolumn=no nonumber norelativenumber
augroup end

" Start insert mode and disable line numbers in terminal buffer.
augroup terminalsettings
	autocmd!
	if has('nvim')
		autocmd TermOpen * setlocal nonumber norelativenumber
		autocmd TermOpen * startinsert
	endif
augroup end

" Toggle relative numbers in Insert/Normal mode.
augroup togglenumbers
	autocmd!
	autocmd InsertEnter,BufLeave,WinLeave,FocusLost * call autocmds#togglenumbers#('setlocal norelativenumber')
	autocmd InsertLeave,BufEnter,WinEnter,FocusGained * call autocmds#togglenumbers#('setlocal relativenumber')
augroup end

" Save the current buffer after any changes.
augroup savebuffer
	autocmd!
	autocmd InsertLeave,TextChanged * nested call autocmds#savebuffer#()
	autocmd FocusGained,BufEnter,CursorHold * silent! checktime
augroup end

" Set current working directory project root.
augroup setroot
	autocmd!
	autocmd VimEnter,BufEnter * call autocmds#setroot#()
augroup end

" Jump to last known position and center buffer around cursor.
augroup jumplast
	autocmd!
	autocmd BufWinEnter ?* call autocmds#jumplast#()
augroup end

" Remove trailing whitespace characters.
augroup trimtrailing
	autocmd!
	autocmd BufWritePre * call autocmds#trimtrailing#()
augroup end

" Open file explorer if argument list contains at least one directory.
augroup openexplorer
	autocmd!
	autocmd VimEnter * call autocmds#openexplorer#()
augroup end

" Create directory path if it's not exist.
augroup makemissing
	autocmd!
	autocmd BufWritePre * call autocmds#makemissing#(expand('<afile>:p:h'), v:cmdbang)
augroup end
