let mapleader=" "

syntax on

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set encoding=utf-8
set t_Co=256

set laststatus=2
set showcmd
set ruler
set wildmenu
set autochdir

set autoindent
set tabstop=4
set shiftwidth=4
"set expandtab
"set softtabstop=4

set number
set relativenumber
set scrolloff=5
set cursorline
set wrap
set list
set listchars=trail:■,tab:>-

set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase

noremap H 5h
noremap J 5j
noremap K 5k
noremap L 5l

noremap sh :set nosplitright<CR>:vsplit<CR>
noremap sl :set splitright<CR>:vsplit<CR>
noremap sk :set nosplitbelow<CR>:split<CR>
noremap sl :set splitbelow<CR>:split<CR>
noremap <LEADER>h <C-w>h
noremap <LEADER>j <C-w>j
noremap <LEADER>k <C-w>k
noremap <LEADER>l <C-w>l
noremap <up> :resize +5<CR>
noremap <down> :resize -5<CR>
noremap <left> :vertical resize -5<CR>
noremap <right> :vertical resize +5<CR>

noremap te :tabedit<CR>
noremap tn :tabnext<CR>
noremap tb :tabprevious<CR>

noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

"-----Install Vim-plug
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
"-----Install nodejs for coc.nvim
"curl -sL install-node.now.sh/lts | bash

call plug#begin('~/.vim/plugged')
	Plug 'scrooloose/nerdtree',{'on':'NERDTreeToggle'}
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

noremap <F5> :NERDTreeToggle<CR>
