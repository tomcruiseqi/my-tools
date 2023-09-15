# If you come from bash you might have to change your $PATH.
source $HOME/.cargo/env
export M2_HOME=$HOME/programs/apache-maven-3.9.2
export NPM_HOME=$HOME/qztusr/lib/node_modules
export GOROOT=$HOME/programs/go
export GOPATH=$HOME/documents/02-source/90-golang-sources-gopath
export PATH=$HOME/documents/02-source/38-procmap:$PATH
export PATH=/usr/share/bcc/tools/:$PATH
export PATH=$HOME/documents/08-linux/50-syzkaller/bin:$PATH
export PATH=$HOME/documents/02-source/62-procmap:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/programs/cppcheck/bin:$PATH
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH
export PATH=$M2_HOME/bin:$PATH
export PATH=$NPM_HOME/vscode-langservers-extracted/bin:$PATH
export PATH=/usr/lib/llvm-17/bin:$PATH
export PATH=$HOME/.local/python37-venv/bin:$PATH
export PATH=$HOME/documents/02-source/05-lua-language-server/bin:$PATH

export VIRTUAL_ENV=$HOME/.local/python37-venv

export KERNEL=$HOME/documents/08-linux/v5.10.x/linux
export IMAGE=$HOME/documents/08-linux/51-syzkaller-create-image
export SYZW=$HOME/documents/08-linux/52-my-syzkaller-workspace

export VM_PORT_SSH_AMD64=20022
export VM_PORT_SSH_KALI=21022
export VM_PORT_SSH_RHEL7=22022
export VM_PORT_SSH_I386=23022
export VM_PORT_SSH_RHEL8=24022
export VM_PORT_SSH_RHEL9=25022
export VM_PORT_SSH_AMD64_RT=26022
export VM_PORT_SSH_AARCH64=22
export VM_USER_ROOT_LOCAL="root@localhost"
export VM_USER_QZT_LOCAL="qizengtian@localhost"
export VM_USER_QZT_AARCH64="qizengtian@arm64.llkd.qzt.com"
export FUZZ0="192.168.8.120"
export FUZZ1="192.168.8.121"
export FUZZ2="192.168.8.122"
export FUZZ3="192.168.8.123"
export FUZZ4="192.168.8.124"
export FUZZ5="192.168.8.125"
export FUZZ6="192.168.8.126"
export FUZZ7="192.168.8.127"
export FUZZ8="192.168.8.128"
export FUZZ9="192.168.8.129"

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias rm="gio trash"
alias ssh2k="ssh -p $VM_PORT_SSH_AMD64 $VM_USER_QZT_LOCAL"
alias ssh27="ssh -p $VM_PORT_SSH_RHEL7 $VM_USER_ROOT_LOCAL"
alias ssh2ka="ssh -p $VM_PORT_SSH_KALI $VM_USER_ROOT_LOCAL"
alias ssh2k32="ssh -p $VM_PORT_SSH_I386 $VM_USER_QZT_LOCAL"
alias ssh28="ssh -p $VM_PORT_SSH_RHEL8 $VM_USER_ROOT_LOCAL"
alias ssh29="ssh -p $VM_PORT_SSH_RHEL9 $VM_USER_ROOT_LOCAL"
alias ssh2a64="ssh -p $VM_PORT_SSH_AARCH64 $VM_USER_QZT_AARCH64"
alias ssh2rt="ssh -p $VM_PORT_SSH_AMD64_RT $VM_USER_QZT_LOCAL"
alias g2k5="cd $HOME/documents/08-linux/v5.4.234-amd64/linux"
alias g2km="cd $HOME/documents/08-linux/master"
alias g2mp="cd $HOME/documents/08-linux/62-llkd-myprac"
alias g2np="cd $HOME/.local/share/nvim/site/pack/packer"
alias g2nc="cd $HOME/.config/nvim"
alias g2qm="cd $HOME/documents/09-qemu/master"
alias g2sz="cd $HOME/documents/08-linux/50-syzkaller"
alias g2sw="cd $SYZW"
alias g2sm="cd $IMAGE"
alias g2sk="cd $KERNEL"
alias rmsw="rm -rf $SYZW/corpus.db $SYZW/crashes instance*"
alias n="nvim"
alias nvimconfig="nvim $HOME/.config/nvim/lua/plugins.lua"
alias g2nf="cd ~/.local/share/nvim/site/pack/packer/opt/neoformat/autoload/neoformat/formatters"
alias mount-win10="sudo mount -t cifs -o username=qizengtian //192.168.8.192/99-temp /home/qizengtian/win10-work-share"
alias dm="sudo dmesg -k -P -L -T"
alias gitl='git log --pretty="format:%Cred%h %C(yellow)%ci %>(20)%Cblue%cn %>|(60)%C(magenta)%d %>>|(80) %Cgreen %s" '
alias fz="filezilla &>/dev/null &"
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

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
alias hta="history | tail"
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"
if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
