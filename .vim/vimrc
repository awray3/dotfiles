" Installs vim plug if it is not already installed.

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ayu-theme/ayu-vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'stefandtw/quickfix-reflector.vim' 
Plug 'tpope/vim-obsession' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

filetype plugin indent on

set termguicolors
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu 
colorscheme dracula
syntax enable

" general vim settings
set spell spelllang=en_us
set textwidth=80
set colorcolumn=80
set foldmethod=indent
set foldlevel=999
set linebreak " Adds in a better word wrap
set ruler 
set number
"set relativenumber
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


"" Ultisnips settings

"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"let g:UltiSnipsEditSplit='vertical'
"let g:UltiSnipsSnippetsDir='~/.vim/UltiSnips'
"let g:UltiSnipsSnippetsDirectories=[$HOME.'/.vim/UltiSnips']


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
"let g:tex_flavor='latex'


" buffer open and change
nnoremap gb :Buffer<CR>

" neovim only settings
if has('nvim')
	"let g:vimtex_compiler_progname="/Users/andrewwrayj"
	let g:python3_host_prog="/usr/local/Caskroom/miniconda/base/envs/neovim/bin/python3"
endif

" template settings
let g:templates_directory = "/home/andrew/.vim/templates"

" fzf under current word
nnoremap <silent> <Leader>rg :Rg <C-R><C-W><CR>

" fzf command
nnoremap gf :Find<CR>

" Splits now go below and right instead 
set splitbelow splitright

" navigate splits easier
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" easier resizing
noremap <silent> <Leader><Left> :vertical resize +3<CR>
noremap <silent> <Leader><Right> :vertical resize -3<CR>
noremap <silent> <Leader><Up> :resize +3<CR>
noremap <silent> <Leader><Down> :resize -3<CR>

let g:vimwiki_list = [{'path': '~/Documents/vimwiki/', 'path_html': '~/Documents/vimwiki_html', 'auto_export': 1}]

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" input current date
:nnoremap <F5> "=strftime("%b %d, %Y")<CR>P
