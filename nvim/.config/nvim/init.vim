call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'frazrepo/vim-rainbow'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'neomake/neomake'
Plug 'machakann/vim-highlightedyank'
"Plug 'tmhedberg/SimpylFold'
Plug 'terryma/vim-multiple-cursors'
call plug#end()
"call :Neoformat to autoformat python code
" leader cc to comment a line out
" :Neomake to syntax check
"call neomake#configure#automake('nrwi', 500)
"line above is for automatic code checking in python
"in normal mode press ctrl n to highlight a variable and then c to change the
"occurances.
let g:Hexokinase_highlighters = [ 'virtual' ]
let g:deoplete#enable_at_startup = 1
let g:rainbow_active = 1

inoremap ii <Esc> 
let mapleader=" "
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
let g:deoplete#enable_at_startup = 1
let g:neomake_python_enabled_makers = ['pylint']
map <leader>f :Ranger<CR>
map <leader>m :Neomake<CR>
map <leader>n :Neoformat<CR>
autocmd BufWritePost *default.yml !espanso restart
set showmatch
set matchtime=3

inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
