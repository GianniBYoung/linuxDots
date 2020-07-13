syntax enable
filetype indent on
set autoindent
set number
:imap ii <Esc>
hi CursorLineNr ctermfg = 15
set wildmode=longest,list,full
set splitbelow splitright
autocmd BufWritePre * %s/\\s\+$//e
