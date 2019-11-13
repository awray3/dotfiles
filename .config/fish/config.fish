alias vimconfig "vim ~/.vimrc"
alias fishconfig "vim ~/.config/fish/config.fish"
alias lsa "ls -a"
alias gau "git add -u"

# system-specific aliases. Remember Darwin = old name for MacOS

switch (uname)

case Darwin
	alias thesis "cd ~/Documents/thesis.nosync"
	alias biostats "cd ~/Documents/data_sci.nosync/biostats"
case Linux
	alias thesis "cd ~/Documents/thesis"
	alias biostats "cd ~/Documents/biostats"
end

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


