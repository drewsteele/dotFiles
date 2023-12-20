syntax on
set nocompatible
set backspace=indent,eol,start
set incsearch
set showmatch
set autoindent
set hlsearch
set modelines=0                                    " no custom modeline in files
set ruler                                          " show where we are
set splitbelow                                     " split always to bottom
set splitright                                     " vsplit always to right
set shiftwidth=4                                   " Use indents of 2 spaces
set tabstop=4                                      " Indentation every 2 columns
set nowrap                                         " dont wrap
set expandtab
set number
set relativenumber

" filetypes
filetype on
filetype plugin on
filetype indent on

" set background=dark
colorscheme badwolf


" Ctrl-P settings - igrnore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" custom mappings 
let mapleader = ","
" paste mode
map <F2> :set paste!<CR>
" remove numbers
map <leader>nn :set number! relativenumber!<CR> 
map <leader>w :set wrap!<CR>

" NerdTree toggle
" e = explore
map <leader>e :NERDTreeToggle<CR>
" start NerdTree on start if no files selected
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Fugitive Vim mappings
map <leader>gb :Gblame<CR>
map <leader>gd :Gdiff<CR>

" these modify the cursor for different modes
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
