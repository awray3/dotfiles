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
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(git)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status anaconda)
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.


plugins=(git virtualenv)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
#
# Example aliases
alias jl="jupyter lab"
alias ls="ls -a"

alias zshconfig="nvim ~/.zshrc"
alias vimconfig="nvim ~/.vimrc"
#alias oldvim="vim"
alias vim="nvim"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme


zstyle ':completion:*:*:vim:*' file-patterns '^*.(out|latexmain|aux|log|pdf|gz|fls|fdb_latexmk):source-files' '*:all-files'
zstyle ':completion:*:*:mvim:*' file-patterns '^*.(out|latexmain|aux|log|pdf|gz|fls|fdb_latexmk):source-files' '*:all-files'
zstyle ':completion:*:*:nvim:*' file-patterns '^*.(out|latexmain|aux|log|pdf|gz|fls|fdb_latexmk):source-files' '*:all-files'

bindkey -v


