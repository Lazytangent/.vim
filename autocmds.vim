augroup OpenFile
  autocmd!

  autocmd FocusGained,BufEnter * checktime
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif
  autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh :call CleanExtraSpaces()

  autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

  autocmd TerminalOpen * if (&buftype == "terminal") | setlocal nospell nolist | endif
augroup END
