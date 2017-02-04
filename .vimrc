execute pathogen#infect()
syntax on
set backspace=indent,eol,start
set modelines=0                                    " no custom modeline in files
set ruler                                          " show where we are
set number                                         " line numbers
set splitbelow                                     " split always to bottom
set splitright                                     " vsplit always to right

set background=dark
colorscheme solarized

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
