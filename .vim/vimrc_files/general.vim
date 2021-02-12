""""""""
" general vim settings
""""""""

" line stuff 
set textwidth=80
set colorcolumn=80
set cursorline
set linebreak " Adds in a better word wrap


" spelling
set spell spelllang=en_us

" folds
set foldmethod=indent
set foldlevel=999

" numbering
set number

"allow backspacing over everything in insert mode
set backspace=indent,eol,start 

"Turn on Highlight next search
set incsearch 

"remaps za to space for easier folding
nnoremap <space> za 

" remap esc
inoremap jk <esc>

" synthesize yank and paste with system keyboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

"Omni complete
set omnifunc=syntaxcomplete#Complete

" buffer open and change
nnoremap gb :Buffer<CR>

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

" Nerdcommenter setting
nmap <C-_> <leader>c<Space>
vmap <C-_> <leader>c<Space>

" input current date
:nnoremap <F5> "=strftime("%b %d, %Y")<CR>P

let g:vimwiki_list = [{'path': '~/Documents/vimwiki/', 'path_html': '~/Documents/vimwiki_html', 'auto_export': 1}]
