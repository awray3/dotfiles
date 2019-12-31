" Installs vim plug if it is not already installed.

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



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

"colours
if exists("$TMUX")
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set t_Co=256
	set notermguicolors
else
	set termguicolors
endif

let ayucolor="mirage" " for mirage version of theme
colorscheme ayu


set textwidth=80
set colorcolumn=80
set shiftround " seems to round your indents
set foldmethod=indent
set foldlevel=1
set linebreak " Adds in a better word wrap
set ruler 
"set number
set relativenumber
set backspace=indent,eol,start "allow backspacing over everything in insert mode
set incsearch "Turn on Highlight next search

if has('mac')
	set cursorline
endif

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

"" Ultisnips settings

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsSnippetsDir='~/.vim/UltiSnips'
let g:UltiSnipsSnippetsDirectories = ['~/.vim/UltiSnips', 'UltiSnips']


" swap and temp files
set swapfile
set dir=~/.vim/.swp//
set backupdir=~/.vim/.backup//
set undodir=~/.vim/.undo//
