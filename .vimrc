" Functions {{{
function! CleanExtraSpaces()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  silent! %s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfun

function! JavaScriptFold()
  setlocal foldmethod=syntax
  setlocal foldlevelstart=1
  syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend

  function! FoldText()
    return substitute(getline(v:foldstart), '{.*', '{...}', '')
  endfunction
  setlocal foldtext=FoldText()
endfunction
" }}}

" Basic settings {{{
filetype plugin indent on
syntax enable
" }}}

" Settings {{{
set autoread
set scrolloff=7

set wildmenu
set wildmode=longest:full,list:full
set wildignore=*.o,*~,*.pyc,*/.git*,*/.gh/*,*/.svn/*,*/.DS_Store

set showcmd
set cmdheight=1
set ruler
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2

set number
set relativenumber
set numberwidth=5
set clipboard=unnamedplus
set list
set listchars=tab:▶\ ,trail:▦

set mouse=a
set spell
set spellfile=~/.vim/spell/en.utf-8.add
set cursorline
set modeline

set foldenable
set foldmethod=marker
set foldcolumn=1
set foldlevelstart=10

set background=dark
set termguicolors
set encoding=utf8
set fileformats=unix,mac,dos

set nobackup
set nowritebackup
set noswapfile

set expandtab
set smarttab
set shiftwidth=2
set tabstop=8
set softtabstop=2

set linebreak
set wrap
set autoindent

set path+=**

set splitright
set splitbelow

set textwidth=80
set formatoptions+=t
" }}}

" Mappings {{{
let mapleader = ","
let maplocalleader = " "
noremap \ ,

nnoremap <leader>w :w<cr>
nnoremap <localleader>wq :wq<cr>
nnoremap <localleader>fs :w<cr>
nnoremap <localleader>o o<Esc>
nnoremap <localleader>O O<Esc>
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

" NERDTree Mappings {{{2
nnoremap <leader>nn :NERDTreeFocus<cr>
" }}}
" }}}

" Commands {{{
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
command! MakeTags !ctags -R .
" }}}

" Autocmds {{{
autocmd FocusGained,BufEnter * checktime
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif
autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh :call CleanExtraSpaces()

" FileType {{{2

" Python {{{3
autocmd FileType python syntax keyword pythonDecorator True None False self
autocmd BufNewFile,BufRead *.jinja set syntax=htmljinja
autocmd BufNewFile,BufRead *.mako set filetype=make
autocmd BufNewFile,BufRead *.py setlocal softtabstop=4 shiftwidth=4 textwidth=79
" }}}

" JavaScript {{{3
autocmd FileType javascript call JavaScriptFold()
autocmd FileType javascript setlocal foldenable
autocmd FileType javascript setlocal nocindent
" }}}

" Twig {{{3
autocmd BufRead *.twig set syntax=html filetype=html
" }}}

" Markdown {{{3
autocmd FileType markdown setlocal shiftwidth=4 softtabstop=4
autocmd BufRead,BufNewFile *.md setlocal textwidth=80
" }}}

" Rasi {{{3
autocmd BufNewFile,BufRead /*.rasi setfiletype css
" }}}

" Go {{{3
autocmd FileType go setlocal shiftwidth=4 softtabstop=4
" }}}

" Git {{{3
autocmd FileType gitcommit setlocal textwidth=72
" }}}

" Plugin Autocmds {{{3
" NERDTree {{{4
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}
" }}}

" }}}
" }}}

" Plugin variables {{{
" NERDTree {{{2
let g:NERDTreeWinPos = "right"
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = ['\.pyc$', '__pycache__', 'node_modules', '.git']
" }}}
" }}}
