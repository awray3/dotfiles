alias vimconfig "vim ~/.vimrc"
alias nvimconfig "vim ~/.config/nvim/init.vim"
alias fishconfig "vim ~/.config/fish/config.fish"
alias thesis "cd ~/Documents/thesis.nosync"
alias biostats "cd ~/Documents/data_sci.nosync/biostats"
alias lsa "ls -a"
alias gau "git add -u"

# YADM aliases 
alias yau "yadm add -u"
alias yc "yadm commit -v"
alias yst "yadm status"

# Conda settings for fish

switch (uname)

case Linux
	eval /home/awray/anaconda3/bin/conda "shell.fish" "hook" $argv | source
case Darwin 
	eval /usr/local/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end


