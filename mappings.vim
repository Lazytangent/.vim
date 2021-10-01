let mapleader = ","
let maplocalleader = " "
noremap \ ,

nnoremap <localleader>wq :wq<cr>
nnoremap <localleader>fs :w<cr>
nnoremap <localleader>ao o<Esc>
nnoremap <localleader>aO O<Esc>

nnoremap <localleader>ct :!ctags -R .<cr><cr>
nnoremap <localleader>cd :cd %:h<cr>

nmap j gj
nmap k gk

map <silent> <leader><cr> :nohlsearch<cr>

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

nnoremap <leader>j :jumps<cr>
nnoremap <leader>l :ls<cr>:b<space>
nnoremap <leader>m :marks<cr>:normal! `
nnoremap <leader>c :changes<cr>

" Plugin Mappings {{{

" ExecuteFile {{{2
nnoremap <C-L><C-R> :call ExecuteFile()<cr>
" }}}

" GrepOperator {{{2
nnoremap <leader><leader>g :set operatorfunc=GrepOperator<cr>g@
vnoremap <leader><leader>g :<C-u>call GrepOperator(visualmode())<cr>
" }}}

" }}}

" NERDTree Mappings {{{
nnoremap <leader>nn :NERDTreeFocus<cr>
" }}}

" Fzf.vim Mappings {{{
nnoremap <localleader>fz <cmd>FZF<cr>
nnoremap <localleader>ff <cmd>Files<cr>
nnoremap <localleader>fa :Ag<space>
nnoremap <localleader>fb <cmd>Buffers<cr>
nnoremap <localleader>fr :Rg<space>
nnoremap <localleader>ft :Tags<space>
nnoremap <localleader>fh <cmd>History<cr>
nnoremap <localleader>fc <cmd>Commands<cr>
" }}}

" Fugitive Mappings {{{
nnoremap <localleader>gs <cmd>Git<cr>
nnoremap <localleader>gw <cmd>Gwrite<cr>
nnoremap <localleader>gc <cmd>Git commit<cr>
nnoremap <localleader>gp <cmd>Git push<cr>
nnoremap <localleader>gl <cmd>Git pull<cr>
" }}}

" Emmet Vim Mappings {{{

" }}}

" Commands {{{
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
command! MakeTags !ctags -R .
" }}}
