let mapleader = " "
let maplocalleader = " m"
noremap \ ,

" Commands {{{
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
command! MakeTags !ctags -R .
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \ fzf#vim#with_preview(), <bang>0)
" }}}

" File operations
nnoremap <leader>wq :wq<cr>
nnoremap <leader>fs :w<cr>

" Convenience
nnoremap <leader>ao o<Esc>
nnoremap <leader>aO O<Esc>

nnoremap <localleader>cd :cd %:h<cr>

nmap j gj
nmap k gk

map <silent> <localleader><cr> :nohlsearch<cr>

nnoremap <C-k> :<C-U>execute "exec 'norm m`' \| move -" . (1+v:count1)<cr>``
nnoremap <C-j> :<C-U>execute "exec 'norm m`' \| move +" . (0+v:count1)<cr>``

vnoremap <C-k> :<C-U>execute "'<,'>move '<-" . (1+v:count1)<cr>gv
vnoremap <C-j> :<C-U>execute "'<,'>move '<+" . (0+v:count1)<cr>gv

cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-U>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

nnoremap * *``
nnoremap # #``

nnoremap c* /\<<C-r>=expand('<cword>')<cr>\>\C<cr>``cgn
nnoremap c# ?\<<C-r>=expand('<cword>')<cr>\>\C<cr>``cgN

nnoremap d* /\<<C-r>=expand('<cword>')<cr>\>\C<cr>``dgn
nnoremap d# ?\<<C-r>=expand('<cword>')<cr>\>\C<cr>``dgN

nnoremap <leader>l :ls<cr>:b<space>
nnoremap <leader>m :marks<cr>:normal! `
nnoremap <leader>,p :cexpr system('pre-commit run --files' . shellescape(expand('%')))<cr>:copen<cr>

" Plugin Mappings {{{

" ExecuteFile {{{2
nnoremap <C-L><C-R> :call ExecuteFile()<cr>
" }}}

" GrepOperator {{{2
nnoremap <leader>gr :set operatorfunc=GrepOperator<cr>g@
vnoremap <leader>gr :<C-u>call GrepOperator(visualmode())<cr>
" }}}

" }}}

" Fzf.vim Mappings {{{
nnoremap <leader>fz <cmd>FZF<cr>
nnoremap <leader>ff <cmd>Files<cr>
nnoremap <leader>fb <cmd>Buffers<cr>
nnoremap <leader>fg <cmd>Rg<cr>
" }}}

" Fugitive Mappings {{{
nnoremap <leader>gs <cmd>Git<cr>
nnoremap <leader>gp <cmd>Git push<cr>
nnoremap <leader>gl <cmd>Git pull<cr>
" }}}
