syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set clipboard=unnamedplus               " system clipboard

call plug#begin(stdpath('data') . '/plugged')

Plug 'morhetz/gruvbox'

call plug#end()

" theme config
let g:gruvbox_contrast_dark='medium'
colorscheme gruvbox
