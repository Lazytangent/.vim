let mapleader = ","
let maplocalleader = " "
noremap \ ,

nnoremap <localleader>wq :wq<cr>
nnoremap <localleader>fs :w<cr>
nnoremap <localleader>ao o<Esc>
nnoremap <localleader>aO O<Esc>

nnoremap <localleader>ct :!ctags -R .<cr><cr>
nnoremap <localleader>cd :cd %h<cr>

nmap j gj
nmap k gk

map <silent> <leader><cr> :nohlsearch<cr>

nnoremap <C-k> :<C-U>execute "exec 'norm m`' \| move -" . (1+v:count1)<cr>``
nnoremap <C-j> :<C-U>execute "exec 'norm m`' \| move +" . (0+v:count1)<cr>``

vnoremap <C-k> :<C-U>execute "'<,'>move '<-" . (1+v:count1)<cr>gv
vnoremap <C-j> :<C-U>execute "'<,'>move '<+" . (0+v:count1)<cr>gv

cnoremap $h e ~/
cnoremap $d e ~/Desktop/
cnoremap $j e ./
cnoremap $c e <C-\>eCurrentFileDir("e")<cr>

cnoremap $q <C-\>eDeleteTillSlash()<cr>

cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-U>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

nnoremap <C-L><C-R> :call ExecuteFile()<cr>

" NERDTree Mappings {{{
nnoremap <leader>nn :NERDTreeFocus<cr>
" }}}

" Fzf.vim Mappings {{{
nnoremap <leader>fz <cmd>FZF<cr>
nnoremap <leader>ff <cmd>Files<cr>
nnoremap <leader>fa :Ag<space>
nnoremap <leader>fb <cmd>Buffers<cr>
nnoremap <leader>fr :Rg<space>
nnoremap <leader>ft :Tags<space>
nnoremap <leader>fh <cmd>History<cr>
nnoremap <leader>fc <cmd>Commands<cr>
" }}}

" Fugitive Mappings {{{
nnoremap <localleader>gs <cmd>Git<cr>
nnoremap <localleader>gw <cmd>Gwrite<cr>
nnoremap <localleader>gc <cmd>Git commit<cr>
nnoremap <localleader>gp <cmd>Git push<cr>
nnoremap <localleader>gl <cmd>Git pull<cr>
" }}}

" Commands {{{
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
command! MakeTags !ctags -R .
" }}}

