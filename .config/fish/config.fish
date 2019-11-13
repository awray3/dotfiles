# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /usr/local/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

switch (uname)
case Linux
	echo I am on Linux
case Darwin
	echo I am on Mac
end

alias vimconfig "vim ~/.vimrc"
alias nvimconfig "vim ~/.config/nvim/init.vim"
alias fishconfig "vim ~/.config/fish/config.fish"
alias thesis "cd ~/Documents/thesis.nosync"
alias biostats "cd ~/Documents/data_sci.nosync/biostats"
