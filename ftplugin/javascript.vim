function! JavaScriptFold()
  setlocal foldmethod=syntax
  setlocal foldlevelstart=1
  syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend

  function! FoldText()
    return substitute(getline(v:foldstart), '{.*', '{...}', '')
  endfunction
  setlocal foldtext=FoldText()
endfunction

call JavaScriptFold()
setlocal foldenable
setlocal nocindent
setlocal suffixesadd+=.js,.jsx
