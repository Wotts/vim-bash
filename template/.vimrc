colorscheme srcery
syntax on
hi MatchParen cterm=bold
filetype plugin indent on
set mouse=i
set softtabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set number
autocmd BufNewFile,BufRead *.tt2 set filetype=html
vmap T !perltidy<CR>
vmap S !sort<CR>
