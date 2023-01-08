set encoding=utf-8
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
noremap H 5h
noremap L 5l

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

call plug#begin('/home/hank/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

call plug#end()
"  coc.nvim
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#confirm() :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! Fixtab() abort
    call coc#pum#next(1)
    call coc#pum#prev(1)
endfunction

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


"  =========
let g:coc_global_extensions = ['coc-json','coc-vimlsp','coc-marketplace','coc-python']

set updatetime=300
"set signcolumn=yes
set hidden
inoremap <silent><expr> <c-j> coc#refresh()
nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>= <plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <LEADER>rn <Plug>(coc-rename)
nnoremap <silent> <LEADER>h :call <SID>show_documentation()<CR>
autocmd CursorHold * silent call CocActionAsync('highlight')
"  =========

color snazzy
let g:lightline = {'colorscheme': 'snazzy', }
let g:SnazzyTransparent = 1

if exists("g:neovide")

let g:neovide_cursor_vfx_mode = "pixiedust"
set guifont =JetBrains\ Mono:h12
endif


