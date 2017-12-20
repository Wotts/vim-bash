" Vimrc Twan Driessen - Systeemprogrammeur XS4ALL Internet

colorscheme srcery
syntax on
hi MatchParen cterm=bold
filetype plugin indent on
set ls=2
set title
set mouse=i
set softtabstop=4
set shiftwidth=4
set expandtab
set incsearch
set hlsearch
set number
set relativenumber
set ignorecase
set smartcase
set scroll=20
set cursorline
set splitright
autocmd BufNewFile,BufRead *.tt2 set filetype=html
autocmd BufNewFile,BufRead *.t set filetype=perl
autocmd BufNewFile,BufRead *.ns set filetype=perl
vmap T !perltidy<CR>
vmap S !sort<CR>
nnoremap <silent> <BS> :nohlsearch<CR>
highlight ExtraWhitespace ctermbg=darkgrey
match ExtraWhitespace /\s\s\+$/

"Remove all trailing whitespace by pressing F6
nnoremap <F6> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
