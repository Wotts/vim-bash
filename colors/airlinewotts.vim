" MIT License. Copyright (c) 2013-2018 Bailey Ling et al.
" vim: et ts=2 sts=2 sw=2 tw=80

scriptencoding utf-8
" For this, the airlinewotts.vim, theme, this is defined as

let g:airline#themes#airlinewotts#palette = {}
" The airlinewotts.vim theme:
let s:airline_a_normal   = [ '#00005f' , '#dfff00' , 0  , 15 ]
let s:airline_b_normal   = [ '#ffffff' , '#444444' , 15 , 8 ]
let s:airline_c_normal   = [ '#9cffd3' , '#166020' , 15  , 0 ]
let g:airline#themes#airlinewotts#palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)

" Here we define overrides for when the buffer is modified.  This will be
" applied after g:airline#themes#airlinewotts#palette.normal, hence why only certain keys are
" declared.
let g:airline#themes#airlinewotts#palette.normal_modified = {
      \ 'airline_c': [ '#ffffff' , '#5f005f' , 9     , 0      , ''     ] ,
      \ }


let s:airline_a_insert = [ '#00005f' , '#00dfff' , 0  , 3  ]
let s:airline_b_insert = [ '#ffffff' , '#005fff' , 15 , 8  ]
let s:airline_c_insert = [ '#ffffff' , '#000080' , 15  , 0  ]
let g:airline#themes#airlinewotts#palette.insert = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)
let g:airline#themes#airlinewotts#palette.insert_modified = {
      \ 'airline_c': [ '#ffffff' , '#5f005f' , 9     , 0      , ''     ] ,
      \ }
let g:airline#themes#airlinewotts#palette.insert_paste = {
      \ 'airline_a': [ s:airline_a_insert[0]   , '#d78700' , s:airline_a_insert[2] , 02     , ''     ] ,
      \ }


let g:airline#themes#airlinewotts#palette.replace = copy(g:airline#themes#airlinewotts#palette.insert)
let g:airline#themes#airlinewotts#palette.replace.airline_a = [ s:airline_b_insert[0]   , '#af0000' , s:airline_b_insert[2] , 124     , ''     ]
let g:airline#themes#airlinewotts#palette.replace_modified = g:airline#themes#airlinewotts#palette.insert_modified


let s:airline_a_visual = [ '#000000' , '#ffaf00' , 0 , 3 ]
let s:airline_b_visual = [ '#000000' , '#ff5f00' , 0 , 166 ]
let s:airline_c_visual = [ '#ffffff' , '#5f0000' , 15  , 0  ]
let g:airline#themes#airlinewotts#palette.visual = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b_visual, s:airline_c_visual)
let g:airline#themes#airlinewotts#palette.visual_modified = {
      \ 'airline_c': [ '#ffffff' , '#5f005f' , 9     , 0      , ''     ] ,
      \ }


let s:airline_a_inactive = [ '#4e4e4e' , '#1c1c1c' , 7 , 0 , '' ]
let s:airline_b_inactive = [ '#4e4e4e' , '#262626' , 7 , 0 , '' ]
let s:airline_c_inactive = [ '#4e4e4e' , '#303030' , 7 , 0 , '' ]
let g:airline#themes#airlinewotts#palette.inactive = airline#themes#generate_color_map(s:airline_a_inactive, s:airline_b_inactive, s:airline_c_inactive)
let g:airline#themes#airlinewotts#palette.inactive_modified = {
      \ 'airline_c': [ '#875faf' , '' , 9 , '' , '' ] ,
      \ }

" For commandline mode, we use the colors from normal mode, except the mode
" indicator should be colored differently, e.g. blue on light green
let s:airline_a_commandline = [ '#0000ff' , '#0cff00' , 15  , 0 ]
let s:airline_b_commandline = [ '#ffffff' , '#444444' , 15 , 8 ]
let s:airline_c_commandline = [ '#9cffd3' , '#166020' , 15  , 0 ]
let g:airline#themes#airlinewotts#palette.commandline = airline#themes#generate_color_map(s:airline_a_commandline, s:airline_b_commandline, s:airline_c_commandline)

let g:airline#themes#airlinewotts#palette.accents = {
      \ 'red': [ '#ff0000' , '' , 166 , ''  ]
      \ }
