let mapleader=" "
syntax on

set number
set wrap
set showcmd
set wildmenu
set relativenumber

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set cursorline

noremap J 5j
noremap K 5k

map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC
map s <nop>

map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

map <LEADER>l <C-w>l
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k

noremap = nzz
noremap - Nzz

set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

call plug#end()

color snazzy
let g:lightline = {'colorscheme': 'snazzy', }
let g:SnazzyTransparent = 1

if exists("g:neovide")

let g:neovide_cursor_vfx_mode = "pixiedust"
set guifont =JetBrains\ Mono:h12
endif


