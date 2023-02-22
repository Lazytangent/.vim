if &term == "alacritty"
  let &term = "xterm"
endif

set termguicolors
filetype plugin indent on
syntax on

set autoread
set scrolloff=7

set wildmenu
set wildmode=longest:full,list:full
set wildignore=*.o,*~,*.pyc,*/.git/*,*/.gh/*,*/.svn/*,*/.DS_Store,*/__pycache__/*,*/target/*

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

set clipboard+=unnamed,unnamedplus
set list
set listchars=tab:▶\ ,trail:▦

set mouse=a
set spellfile=~/.vim/spell/en.utf-8.add
set modeline

set foldenable
set foldmethod=syntax
set foldlevelstart=10

set background=dark
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

set shiftround
set grepprg=rg\ --vimgrep\ --smart-case\ --no-heading\ --with-filename\ --line-number\ --column

set omnifunc=syntaxcomplete#Complete
set completeopt=menuone,noselect

try
  set undodir=~/.vim/temp_dirs/undodir
  set undofile
catch
endtry

set ttyfast

" Statusline {{{
set laststatus=2

set statusline=\ %f%m
set statusline+=\ %{FugitiveStatusline()}
set statusline+=\ %y

set statusline+=%=
set statusline+=%q
set statusline+=\ %k
set statusline+=\ Column:\ %-4c
set statusline+=\ Line:\ %l
set statusline+=\ /\ %-4L
set statusline+=\ %(%p%%\ %)
" }}}

" Emmet-Vim {{{
let g:user_emmet_leader_key = '<C-L>'
" }}}

" Netrw {{{
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
" }}}
