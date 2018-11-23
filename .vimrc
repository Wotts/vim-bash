" Vimrc Twan Driessen - Systeemprogrammeur XS4ALL Internet

"Colour
syntax on
colorscheme srcery
hi MatchParen cterm=bold ctermfg=black ctermbg=white


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
noremap <C-d> 10<C-d>
noremap <C-u> 10<C-u>
set cursorline
set splitright
set showcmd
set wildmenu
set wildmode=full
set noshowmode "Airline does this for us


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
"Open and close NERDTree
map <C-x> :NERDTreeToggle<CR>
"Ctrl-N for word, Ctrl-L for line-completion
inoremap <C-N> <C-X><C-N>
inoremap <C-L> <C-X><C-L>

"Pathogen for vim-airline and vim-gitgutter
execute pathogen#infect()
execute pathogen#helptags()

" Airline customizations
let g:airline#extensions#branch#format = 2
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.branch = '⎇ '
:let g:airline_theme='airlinewotts'

"NERDTree customizations
let NERDTreeWinSize=36
let NERDTreeShowHidden=1
let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeNodeDelimiter = "\t"
