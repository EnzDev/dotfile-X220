set number
set numberwidth=3
set wrap

execute pathogen#infect()

set tabstop=3

syntax on
colorscheme elflord 

let g:syntastic_c_compiler_options = ' -std=c99 -D_GNU_SOURCE'

au BufEnter,BufWinEnter,BufNewFile,BufRead *.sc,*.scd set filetype=supercollider
au Filetype supercollider packadd scvim
