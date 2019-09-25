set nocompatible
filetype off

call plug#begin('~/.vim/plugged')


"General Purpose
Plug 'tpope/vim-surround'
Plug 'jremmen/vim-ripgrep'
Plug 'https://github.com/stefandtw/quickfix-reflector.vim.git'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'aserebryakov/vim-todo-lists'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Townk/vim-autoclose'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-fugitive'

" Colorschemes
Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'

"Python
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'sbdchd/neoformat'
Plug 'davidhalter/jedi-vim'
Plug 'neomake/neomake'
Plug 'bfredl/nvim-ipy'
Plug 'Vigemus/iron.nvim'

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

"Plug 'Yggdroot/indentLine'
"Plug 'ervandew/supertab'
call plug#end()

filetype plugin indent on
let g:tex_flavor='latex'

let $COLORS="~/.vim/plugin/colorstuff.vim"
let $TEX="~/.vim/ftplugin/tex/"
let $PY="~/.vim/ftplugin/python/python.vim"

"ripgrep smartcase
let g:rg_command='rg --vimgrep'
let g:rg_highlight='true'


set omnifunc=syntaxcomplete#Complete
syntax on
set termguicolors

" remaps za to space for easier folding
nnoremap <space> za 


" general options

set textwidth=80
set colorcolumn=80
set shiftround " seems to round your indents
set foldmethod=indent
set foldlevel=99
set linebreak " Adds in a better word wrap
set ruler " Adds a ruler?
set number
"set number relativenumber " Adds in line numbers
" set ignorecase "ignore case when searching
set backspace=indent,eol,start "allow backspacing over everything in insert mode
set incsearch "Turn on Highlight next search
set cursorline



" Remap and jk kj to esc
inoremap jk <esc>

set guifont=Menlo-Regular:h13

"nnoremap <S-h> <C-w>h
"nnoremap <S-j> <C-w>j
"nnoremap <S-k> <C-w>k
"nnoremap <S-l> <C-w>l

" autocmd Filetype ipynb nmap <silent><Leader>b :VimpyterInsertPythonBlock<CR>
" autocmd Filetype ipynb nmap <silent><Leader>j :VimpyterStartJupyter<CR>
" autocmd Filetype ipynb nmap <silent><Leader>n :VimpyterStartNteract<CR>


" YCM and UltiSnips settings
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'



" EasyMotion Settings
"let g:EasyMotion_do_mapping = 0 " Disable default mappings
"let g:EasyMotion_smartcase = 1
"let g:EasyMotion_enter_jump_first = 1
"nmap <Leader>s <Plug>(easymotion-overwin-f2)
"map j <Plug>(easymotion-j)
"map k <Plug>(easymotion-k)
"map f <Plug>(easymotion-fl)
"map F <Plug>(easymotion-Fl)
"map t <Plug>(easymotion-tl)
"map T <Plug>(easymotion-Tl)


" Term settings
if !has('nvim')
	set termwinkey=<C-W>
endif

" Vim-Todo setting for not moving items when completed.
let g:VimTodoListsMoveItems = 0

"nerdcommenter setting
nmap <C-_> <leader>c<Space>
vmap <C-_> <leader>c<Space>

"deoplete
let g:deoplete#enable_at_startup = 1

"Airline
let g:airline_theme='gruvbox'
let g:airline_solarized_bg='dark'

let g:airline_symbols={}
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.dirty=⚡



"multi cursor
let g:multi_cursor_exit_from_insert_mode = 0

if has('mac')
	let g:python3_host_prog = '/usr/local/anaconda3/envs/neovim3/bin/python'
else 
	let g:python3_host_prog = '/home/awray/anaconda3/envs/neovim3/bin/python3'
endif

" terminal mode
tnoremap <Esc> <C-\><C-n>




" Stuff for Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsSnippetsDir='~/.vim/UltiSnips'
let g:UltiSnipsSnippetsDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

" Nerdtree settings
" Open automatically
autocmd vimenter * NERDTree

" close if last window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


