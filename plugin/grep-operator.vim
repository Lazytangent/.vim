function! GrepOperator(type)
  if a:type ==# 'v'
    execute "normal! `<v`>y"
  elseif a:type ==# 'char'
    execute "normal! `[v`]y"
  else
    return
  endif

  " echom shellescape(@@)
  silent execute "grep! -R " . shellescape(@@) . " ."
  copen
endfunction
