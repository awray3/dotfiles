# this might need to be changed on ubuntu.
# set -gx PATH $HOME/.gem/ruby/2.6.0/bin $PATH

# server alias for vim
alias vim "nvim"

alias vimconfig "vim ~/.vimrc"
alias fishconfig "vim ~/.config/fish/config.fish"
alias texconfig "vim ~/.vim/ftplugin/tex.vim"
alias rconfig "vim ~/.vim/ftplugin/r.vim"
alias fixkeys "xmodmap ~/.Xmodmap"

alias la 'ls -la | grep "^d"; and ls -la | grep "^-"; and ls -la | grep "^l"'
alias gau "git add -u"

# system-specific aliases. Remember Darwin = old name for MacOS

alias thesis "cd ~/Documents/thesis"
alias biostats "cd ~/Documents/bio"
alias i3config "vim ~/.config/i3/config"

# YADM aliases 
alias yau "yadm add -u"
alias yc "yadm commit -v"
alias yst "yadm status"

# Conda settings for fish
eval /home/andrew/anaconda3/bin/conda "shell.fish" "hook" $argv | source

# fzf
set FZF_DEFAULT_COMMAND 'rg --files --no-ignore --hidden --follow --glob "!.git/*"'
