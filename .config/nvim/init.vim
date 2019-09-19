set runtimepath^=~/.vim runtimepath+=~/.vim/
let &packpath = &runtimepath
source ~/.vimrc

lua << EOF

require("iron").core.set_config{
  preferred = { python = "ipython"}
}

EOF
