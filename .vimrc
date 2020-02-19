" Installs vim plug if it is not already installed.

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')

Plug 'ayu-theme/ayu-vim'
Plug 'Rigellute/rigel'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-fugitive'
Plug 'lervag/vimtex'
Plug 'SirVer/UltiSnips' | Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'stefandtw/quickfix-reflector.vim' 
Plug 'tpope/vim-obsession' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jalvesaq/Nvim-R'
Plug 'aperezdc/vim-template'

call plug#end()

filetype plugin indent on

set termguicolors
syntax enable
colorscheme rigel

"let ayucolor="mirage" " for mirage version of theme
"colorscheme ayu

" general vim settings
set spell spelllang=en_us
set textwidth=80
set colorcolumn=80
set foldmethod=indent
set foldlevel=999
set linebreak " Adds in a better word wrap
set ruler 
"set number
set relativenumber
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

"" Ultisnips settings

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsSnippetsDir='~/.vim/UltiSnips'
let g:UltiSnipsSnippetsDirectories=[$HOME.'/.vim/UltiSnips']


" swap and temp files
set swapfile
set dir=~/.vim/.swp//
set backupdir=~/.vim/.backup//
set undodir=~/.vim/.undo//


" synthesize yank and paste with system keyboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p


"Omni complete
set omnifunc=syntaxcomplete#Complete


" ripgrep settings
"let g:rg_highlight=1
"let g:rg_binary='/usr/bin/rg'

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
set grepprg=rg\ --vimgrep


" Tex Flavor
let g:tex_flavor='latex'


" buffer open and change
nnoremap gb :buffers<CR>:buffer<Space>

" neovim only settings
if has('nvim')
	let g:vimtex_compiler_progname="/home/andrew/.local/bin/nvr"
endif

" template settings
let g:templates_directory = "/home/andrew/.vim/templates"
