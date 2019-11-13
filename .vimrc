set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'ayu-theme/ayu-vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-fugitive'
Plug 'lervag/vimtex'
Plug 'SirVer/UltiSnips' | Plug 'honza/vim-snippets'

call plug#end()

filetype plugin indent on
syntax on

set termguicolors
let ayucolor="mirage" " for mirage version of theme
colorscheme ayu


set textwidth=80
set colorcolumn=80
set shiftround " seems to round your indents
set foldmethod=indent
set foldlevel=99
set linebreak " Adds in a better word wrap
set ruler " Adds a ruler?
set number
set backspace=indent,eol,start "allow backspacing over everything in insert mode
set incsearch "Turn on Highlight next search
set cursorline


" Nerdcommenter setting
nmap <C-_> <leader>c<Space>
vmap <C-_> <leader>c<Space>


" remaps za to space for easier folding
nnoremap <space> za 

" remap esc
inoremap jk <esc>

" Allow project specific vimrc
set exrc
set secure
