# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/nigel/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9k_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_to_last"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status host time root_indicator dir_writable dir vcs node_version virtualenv command_execution_time newline os_icon)
POWERLEVEL9K_DISABLE_RPROMPT=true

POWERLEVEL9K_HOST_REMOTE_BACKGROUND='113'
POWERLEVEL9K_HOST_REMOTE_FOREGROUND='darkblue'
POWERLEVEL9K_HOST_LOCAL_BACKGROUND='113'
POWERLEVEL9K_HOST_LOCAL_FOREGROUND='black'

POWERLEVEL9K_USER_DEFAULT_BACKGROUND='017'
POWERLEVEL9K_USER_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_USER_ICON=''
POWERLEVEL9K_SUDO_ICON=''

POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='darkblue'
POWERLEVEL9K_DIR_PATH_HIGHLIGHT_FOREGROUND='white'
POWERLEVEL9K_DIR_PATH_HIGHLIGHT_BOLD=true

POWERLEVEL9K_NODE_ICON=''
POWERLEVEL9K_NODE_VERSION_BACKGROUND='darkgreen'

POWERLEVEL9K_STATUS_OK_ICON=''
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9k_STATUS_CROSS=true

POWERLEVEL9K_TIME_ICON=''
POWERLEVEL9K_VIRTUALENV_FOREGROUND='white'
POWERLEVEL9K_OS_ICON_BACKGROUND='black'
POWERLEVEL9K_OS_ICON_FOREGROUND='white'


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
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias vim='nvim'
