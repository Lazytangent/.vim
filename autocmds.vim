augroup OpenFile
  autocmd!

  autocmd FocusGained,BufEnter * checktime
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'gitcommit' | execute "normal! g'\"" | endif
  autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh :call CleanExtraSpaces()

  autocmd TerminalOpen * if (&buftype == "terminal") | setlocal nospell nolist | endif
augroup END
