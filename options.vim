filetype plugin indent on
syntax enable

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
set matchtime=2

" set number
" set relativenumber
" set numberwidth=5
set clipboard+=unnamed,unnamedplus
set list
set listchars=tab:▶\ ,trail:▦

set mouse=a
" set spell
set spellfile=~/.vim/spell/en.utf-8.add
set cursorline
set modeline

set foldenable
set foldmethod=marker
" set foldcolumn=1
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

set shiftround
set grepprg=ag

set omnifunc=syntaxcomplete#Complete
set completeopt=menuone,noselect

try
  set undodir=~/.vim/temp_dirs/undodir
  set undofile
catch
endtry

" NERDTree Settings {{{
let g:NERDTreeWinPos = "right"
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = ['\.pyc$', '__pycache__', 'node_modules', '.git']
" }}}

" FZF {{{

" }}}

" Emmet-Vim {{{
let g:user_emmet_leader_key = '<C-L>'
" }}}

" Gutentags {{{
let g:gutentags_ctags_executable = "/opt/homebrew/Cellar/universal-ctags/HEAD-c436bca/bin/ctags"
" }}}
