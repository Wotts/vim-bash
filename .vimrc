" Vimrc Twan Driessen - Systeemprogrammeur XS4ALL Internet

"Colour
syntax on
colorscheme srcery
hi MatchParen cterm=bold


"Whitespace
highlight ExtraWhitespace ctermbg=darkgrey
match ExtraWhitespace /\s\s\+$/


"Behaviour
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
set showcmd


"Hide POD
:set foldmethod=syntax
:let perl_fold=1
:let perl_nofold_packages=1
:let perl_nofold_subs=1


"Filetypes
autocmd BufNewFile,BufRead *.tt2 set filetype=html
autocmd BufNewFile,BufRead *.t set filetype=perl
autocmd BufNewFile,BufRead *.ns set filetype=perl


"Keybindings
"Remove all trailing whitespace by pressing F6
nnoremap <F6> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
nnoremap <silent> <BS> :nohlsearch<CR>
vmap S !sort<CR>
vmap T !perltidy<CR>
set pastetoggle=<F8>
"Ctrl-N for word, Ctrl-L for line-completion
inoremap <C-N> <C-X><C-N>
inoremap <C-L> <C-X><C-L>

"Pathogen for vim-airline and vim-gitgutter
execute pathogen#infect()
