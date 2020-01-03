# this might need to be changed on ubuntu.
# set -gx PATH $HOME/.gem/ruby/2.6.0/bin $PATH
 set -gx PATH /home/andrew/.cargo/bin $PATH
 set -gx PATH /home/andrew/Downloads/spotifyd/target/release $PATH



alias vimconfig "vim ~/.vimrc"
alias fishconfig "vim ~/.config/fish/config.fish"
alias lsa "ls -a"
alias gau "git add -u"
#alias tmux=""

# system-specific aliases. Remember Darwin = old name for MacOS

switch (uname)

case Darwin
	alias thesis "cd ~/Documents/thesis.nosync"
	alias biostats "cd ~/Documents/data_sci.nosync/biostats"
case Linux
	alias thesis "cd ~/Documents/thesis"
	alias biostats "cd ~/Documents/biostats"
	alias i3config "vim ~/.config/i3/config"
end

# YADM aliases 
alias yau "yadm add -u"
alias yc "yadm commit -v"
alias yst "yadm status"

# Conda settings for fish
eval /home/andrew/miniconda/bin/conda "shell.fish" "hook" $argv | source

