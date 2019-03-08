set nocompatible              " be iMproved, required
set shell=zsh

"Setup for Vundle
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" Themes
Plugin 'jpo/vim-railscasts-theme'
Plugin 'therubymug/vim-pyte'
Plugin 'powerline/powerline'

" Syntax
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'moll/vim-node'
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'

" Ruby and Rails
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'

" Git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" Functionality
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-abolish'

" Helpers
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'marijnh/tern_for_vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'rondale-sc/vim-spacejam'

" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" From David
Plugin 'vim-script/matchit'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'Townk/vim-autoclose'
Plugin 'tpope/vim-endwise'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


let mapleader = ","

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptumx;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptumx;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" ======= General Config ======
set t_Co=256
syntax on
syntax enable
set mouse=a
set ttymouse=xterm2
set lazyredraw
color railscasts
colorscheme railscasts
set number
hi MatchParen cterm=bold ctermfg=yellow ctermbg=none
set backspace=indent,eol,start " Allow backspace in insert mode
set history=1000
set showcmd
set noshowmode
set gcr=a:blinkon0
set visualbell
set autoread
set laststatus=2
inoremap jk <Esc>
inoremap kk <Esc>$a
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

nmap =j :%python -m json.tool<CR>
let g:ackprg = 'ag --nogroup --noclor --column'

let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching=0

set statusline=%F%m%r%h%w\
set statusline+=\ [line\ %l\/%L]
set statusline+=\ col:\ %c

set hidden

" ====== Key Mappings ======
map <Leader>n :NERDTreeToggle<CR>
map <Leader>b :bp<CR>
map <Leader>f :bn<CR>
map <Leader>g :e#<CR>

" ====== Search Settings ======
set incsearch
set hlsearch
set viminfo='100,f1
nnoremap <CR> :noh<CR><CR>

" ====== Turn Off Swap Files ======
set noswapfile
set nobackup
set nowb

" ====== NerCommenter Settings ======
let g:NERDSpaceDelims = 1

" ====== Autoclose Settings ======
let g:AutoClosePairs = {'(': ')', '{': '}', '"': '"', "'": "'", '#{': '}' }
let g:AutoCloseProtectedRegions = ["Character"]

" ====== Indentation ======
set autoindent
set smartindent
set smarttab
set ignorecase
set smartcase
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype indent on

"set list
"set listchars
set wrap
set linebreak

set scrolloff=5

" ====== Set Folds ======
