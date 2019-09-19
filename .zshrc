# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH="/usr/local/anaconda3/bin:$PATH"  # commented out by conda initialize
#export PATH="/usr/local/anaconda3/lib/python3.7/site-packages:$PATH"

# Path to your oh-my-zsh installation.
case "$OSTYPE" in
	darwin*)
		export ZSH="/Users/awray_mac/.oh-my-zsh"
		export thesis=~/Documents/thesis.nosync/
		export bio=~/Dropbox/My_Documents/Bio_610/
		export teach=~/Dropbox/Teaching/Math_256/Spring_19/
		export web=~/Dropbox/Webpage_Stuff/Classes/Math_256/Spring_2019/
		export pdf=~/Documents/PDFs
		export agp=~/Documents/PDFs/Algebraic_Geometry/
		export upload=~/Dropbox/Teaching/
		export currentterm_teach='Spring_19'
		export currentterm_web='Spring_2019'
		export currentclass='Math_256'
		export journal=~/Dropbox/research_notes/journal/
		export PATH=~/anaconda3/bin:$PATH
		export PATH="$HOME/anaconda/bin:$PATH"
		export FZF_BASE=/usr/local/opt/fzf/

		alias cphw="find $teach/Homework -name \*.pdf -exec cp {} $web/Files/Homework \;"
		alias upload="scp -r ~/Dropbox/Webpage_Stuff/Classes/"$currentclass"/"$currentterm_web"/ awray3@shell.uoregon.edu:public_html/Classes/"$currentclass"/"$cirrentterm_web"/"
		# >>> conda initialize >>>
		# !! Contents within this block are managed by 'conda init' !!
		__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
		if [ $? -eq 0 ]; then
		eval "$__conda_setup"
		else
		if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
# . "/usr/local/anaconda3/etc/profile.d/conda.sh"  # commented out by conda initialize
		else
# export PATH="/usr/local/anaconda3/bin:$PATH"  # commented out by conda initialize
		fi
		fi
		unset __conda_setup
		# <<< conda initialize <<<

	;;
	linux*)
		export ZSH="/home/awray/.oh-my-zsh"

		#export PATH="/home/awray/anaconda3/bin/:$PATH"

		# >>> conda initialize >>>
		# !! Contents within this block are managed by 'conda init' !!
		__conda_setup="$('/home/awray/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
		if [ $? -eq 0 ]; then
		eval "$__conda_setup"
		else
		if [ -f "/home/awray/anaconda3/etc/profile.d/conda.sh" ]; then
			. "/home/awray/anaconda3/etc/profile.d/conda.sh"
		else
			export PATH="/home/awray/anaconda3/bin:$PATH"
		fi
		fi
		unset __conda_setup
		# <<< conda initialize <<<

	;;
esac
# export PATH="/usr/bin/anaconda3/bin:$PATH"  # commented out by conda initialize
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="funky"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh context dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status anaconda vcs)
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git virtualenv)

source $ZSH/oh-my-zsh.sh

# aliases
alias jl="jupyter lab"
alias ls="ls -a"

alias zshconfig="nvim ~/.zshrc"
alias vimconfig="nvim ~/.vimrc"
alias vim="nvim"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# vim and variants don't autocomplete to auxillary tex files.
zstyle ':completion:*:*:vim:*' file-patterns '^*.(out|latexmain|aux|log|pdf|gz|fls|fdb_latexmk):source-files' '*:all-files'
zstyle ':completion:*:*:mvim:*' file-patterns '^*.(out|latexmain|aux|log|pdf|gz|fls|fdb_latexmk):source-files' '*:all-files'
zstyle ':completion:*:*:nvim:*' file-patterns '^*.(out|latexmain|aux|log|pdf|gz|fls|fdb_latexmk):source-files' '*:all-files'

# zsh uses vi keybindings for terminal
bindkey -v


