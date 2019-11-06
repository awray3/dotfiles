set runtimepath^=~/.vim runtimepath+=~/.vim/
let &packpath = &runtimepath
source ~/.vimrc

"lua << EOF
"
"require("iron").core.set_config{
"  preferred = { python = "ipython"}
"}
"
"EOF

call plug#begin('~/.vim/plugged')


"General Purpose
Plug 'tpope/vim-surround'
Plug 'jremmen/vim-ripgrep'
Plug 'https://github.com/stefandtw/quickfix-reflector.vim.git'
Plug 'scrooloose/nerdcommenter'
"Plug 'scrooloose/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'aserebryakov/vim-todo-lists'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-fugitive'

" Colorschemes
Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'

" Markdown
"Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'

"Python
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'zchee/deoplete-jedi'
"Plug 'sbdchd/neoformat'
"Plug 'davidhalter/jedi-vim'
"Plug 'neomake/neomake'
"Plug 'bfredl/nvim-ipy'
"Plug 'Vigemus/iron.nvim'

"Plug 'w0rp/ale'
"Plug 'ycm-core/YouCompleteMe'
"Plug 'majutsushi/tagbar'
"Plug 'jeetsukumaran/vim-indentwise'
"Plug 'michaeljsmith/vim-indent-object'
"Plug 'scrooloose/syntastic'
"if has('python')
    " YAPF formatter for Python
    "Plug 'pignacio/vim-yapf-format'
"endif

"Tex
Plug 'lervag/vimtex'
Plug 'SirVer/UltiSnips' | Plug 'honza/vim-snippets'

call plug#end()

filetype plugin indent on
