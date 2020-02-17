set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set conceallevel=0
set spelllang=en_gb spell

let g:vimtex_fold_manual = 1
let g:vimtex_imaps_disabled=['j', 'k', '0', '1', '2', '\', 'jk']
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_imaps_leader = ','
let g:vimtex_complete_enabled=1
let g:vimtex_view_automatic=1
let g:vimtex_parser_bib_backend = 'vim'
let g:vimtex_view_method='zathura'

" IMAPS

call vimtex#imaps#add_map({
			\ 'lhs':'o',
			\ 'rhs':'\omega',
			\ 'wrapper':'vimtex#imaps#wrap_math',
			\})

call vimtex#imaps#add_map({
			\ 'lhs':'w',
			\ 'rhs':'\wedge',
			\ 'wrapper':'vimtex#imaps#wrap_math'
			\})

call vimtex#imaps#add_map({
			\ 'lhs':'O',
			\ 'rhs':'\Omega',
			\ 'wrapper':'vimtex#imaps#wrap_math'
			\})

call vimtex#imaps#add_map({
			\ 'lhs':'vp',
			\ 'rhs':'\varpi',
			\ 'wrapper':'vimtex#imaps#wrap_math'
			\})



" Auto Pairs
let g:AutoPairs={'(':')', '[':']', '{':'}', '``':'"', '$':'$'}
