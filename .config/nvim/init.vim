set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

lua << EOF

require("iron").core.set_config{
  preferred = { python = "ipython"}
}

EOF
