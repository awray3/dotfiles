set tabstop=2
set shiftwidth=2

let g:vimtex_fold_manual = 1
let g:vimtex_imaps_disabled = ['1', '2', ',', 'j', 'k']

let g:vimtex_quickfix_open_on_warning = 0

let g:vimtex_quickfix_latexlog = {
	\ 'overfull' : 0,
	\ 'underfull' : 0,
	\ 'packages' : {
	\   'default' : 0,
	\ },
	\}
let g:vimtex_imaps_leader = ','
let g:vimtex_complete_enabled=1
let g:vimtex_parser_bib_backend = 'vim'
let g:vimtex_complete_bib = 0
let g:vimtex_view_method='zathura'

" IMAPS

call vimtex#imaps#add_map({
\ 'lhs' : 'o',
\ 'rhs' : '\omega',
\ 'wrapper' : 'vimtex#imaps#wrap_trivial'
\})

call vimtex#imaps#add_map({
\ 'lhs' : 'O',
\ 'rhs' : '\Omega',
\ 'wrapper' : 'vimtex#imaps#wrap_trivial'
\})

"call vimtex#imaps#add_map({
"\ 'lhs' : 'o',
"\ 'rhs' : '\omega',
"\ 'wrapper' : 'vimtex#imaps#wrap_trivial'
"\})
