alias vimconfig "vim ~/.vimrc"
alias nvimconfig "vim ~/.config/nvim/init.vim"
alias fishconfig "vim ~/.config/fish/config.fish"
alias thesis "cd ~/Documents/thesis.nosync"
alias biostats "cd ~/Documents/data_sci.nosync/biostats"


# Conda settings for fish

switch (uname)

case Linux
	eval /home/awray/anaconda3/bin/conda "shell.fish" "hook" $argv | source
case Darwin 
	eval /usr/local/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end


