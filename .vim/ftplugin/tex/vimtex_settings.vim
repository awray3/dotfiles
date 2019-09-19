filetype plugin on
filetype indent on

let g:vimtex_imaps_leader=','
let g:tex_fold_manual=1
"let g:vimtex_fold_enabled=1

if has('mac')
	let g:vimtex_view_method='skim'
else 
	let g:vimtex_view_method='zathura'
endif

"let g:vimtex_quickfix_mode=1
set conceallevel=0
"set conceallevel=1
"let g:tex_conceal="abdmgs"
let g:vimtex_complete_enabled=1
let g:vimtex_complete_bib={'simple':1}
set spelllang=en_gb spell

let g:vimtex_compiler_progname = 'nvr'

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

let g:vimtex_imaps_disabled=['j','k','0','1','2']


 let g:vimtex_quickfix_latexlog = {
          \ 'overfull' : 0,
          \ 'underfull' : 0,
          \ 'packages' : {
          \   'default' : 0,
          \ },
          \}
