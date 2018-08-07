set nocompatible

syntax on
set nu
set bg=dark
hi Comment ctermfg=024
set t_Co=256

set cursorline
hi CursorLine cterm=NONE ctermbg=232 

hi LineNr ctermbg=232 ctermfg=236
hi CursorLineNr cterm=bold ctermfg=232

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set ai
set showmatch

"hi OverLength ctermbg=052
"match OverLength /\%101v.\+/

set bs=indent,eol,start
filetype plugin indent on

set hlsearch
set incsearch
set ignorecase
set smartcase   " Overrides ignorecase if...

autocmd FileType sh setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2
