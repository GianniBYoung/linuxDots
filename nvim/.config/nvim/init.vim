call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
call plug#end()

let g:Hexokinase_highlighters = [ 'virtual' ]

inoremap ii <Esc> 
let mapleader=" "
nnoremap Q @@  
:map <Leader> <Space> 
nnoremap <SPACE> <Nop> 
syntax enable
set tabstop=4 shiftwidth=4 expandtab
filetype indent on
set autoindent
nnoremap S :%s//g<Left><Left>
set clipboard+=unnamedplus
set ic
set termguicolors
nohlsearch
set relativenumber
set number
set noswapfile
set lazyredraw "stops redrawing of screen after every input
hi CursorLineNr ctermfg = 15
set wildmode=longest,list,full
set splitbelow splitright
autocmd BufWritePre * %s/\\s\+$//e
let g:ranger_map_keys = 0
map <leader>f :Ranger<CR>
