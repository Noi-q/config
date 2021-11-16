#mm   mm               ##    
###   ##               ""    
##"#  ##   m####m    ####    
## ## ##  ##"  "##     ##    
##  #m##  ##    ##     ##    
##   ###  "##mm##"  mmm##mmm 
##   """    """"    """"""""

#|------------------------|
#| Author: Noi            |
#| Date  : 2021-4-6       |
#|------------------------|


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# zsh theme 
# ZSH_THEME="robbyrussell"

ZSH_THEME="powerlevel10k/powerlevel10k"

# pure theme
# fpath+=$HOME/.zsh/pure
# autoload -U promptinit; promptinit
# prompt pure

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"


# history command option

HISTFILESIZE=1000000

HISTFILE=$HOME/.zsh_history 


# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# External plugin

# zsh-syntax-highlighting
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-autosuggestionso
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


# plugins list
plugins=(
    z git docker extract
)

# source file 
source $ZSH/oh-my-zsh.sh 

# go bin
PATH=$PATH:$GOPATH/bin 

# export MANPATH="/usr/local/man:$MANPATH"

# language environment
# export LANG=zh_CN.UTF-8


# default editor
EDITOR=/usr/bin/vim

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# alias list 别名
alias zshconfig="source ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# user command
alias s="neofetch"
alias ra="ranger"
alias py="python3"
alias py2="python2"
alias mysql="mysql -uroot -p"
alias vi="/usr/bin/vim"
alias vim="nvim"
alias svim="sudo nvim"

# system comand
alias q="exit"
alias c="clear"
alias pkg="sudo pacman"
alias rm="rm -i"
! type lsd >/dev/null 2>&1 || { alias ls="lsd" }

# systemctl
alias s-ss="sudo systemctl start"
alias s-st="sudo systemctl stop"
alias s-sr="sudo systemctl restart"
alias s-se="sudo systemctl enable"
alias s-sd="sudo systemctl disable"
alias ss="systemctl status"

# git command
alias g="git init"
alias g-c="git clone"
alias g-a="git add"
alias g-cm="git commit -m"
alias g-p="git push"
alias g-lo="git log"
alias g-loo="git log --oneline"
alias g-s="git status"
alias g-r="git reset --hard"
alias g-b="git branch"
alias g-c="git checkout"
alias g-m="git merge"
alias g-t="git tag"

# 文件管理器的快捷键绑定 Alt+Up 让用户进入上层目录  Alt+Left 让用户撤销最近的 cd 操作
cdUndoKey() {
  popd      > /dev/null
  zle       reset-prompt
  echo
  ls
  echo
}

cdParentKey() {
  pushd .. > /dev/null
  zle      reset-prompt
  echo
  ls
  echo
}

zle -N                 cdParentKey
zle -N                 cdUndoKey
bindkey '^[[1;3A'      cdParentKey
bindkey '^[[1;3D'      cdUndoKey



# 问候

# me='Noi'
# 
# toilet -f ascii12 $me --gay -t
# 
# hour=$(date +"%H")
# 
# 通过不同时间问候不同句子
# case $hour in
#     06|07|08)          message="\e[1;36m$me 早上好! 清晨的第一缕阳光送给你\e[0m"
#     ;;                 
#     09|10|11|12)       message="\e[1;32m$me 上午好! 快去吃饭吧!\e[0m"
#     ;;                 
#     13|14|15|16|17|18) message="\e[1;33m$me 下午好! 在干嘛呢?\e[0m"
#     ;;                  
#     18|19|20|21|22|23) message="\e[1;35m$me 晚上好! 夜里的风凉吗?\e[0m"
#     ;;                 
#     00|01|03|04|05)    message="\e[1;38m$me 凌晨了! 在忙什么呢?\e[0m"
#     ;;
# esac
# 
# cowsay 随机图像
# rand_cowsay_forture () {
#     local cowsay_list=(`cowsay -l | tail -n +2`);
#     local cowsay_picture=$[ $RANDOM % ${#cowsay_list[@]} ];
#     printf  $message | cowsay -f ${cowsay_list[$cowsay_picture]};
# }
# 
# # cowsay $message
# rand_cowsay_forture
# 
# echo -e "\e[1;31m当前时间: $(date +"%Y-%m-%d %H:%M:%S" | toilet -f wideterm --gay -t)\e[0m" 
# for i in `seq 33`
#     printf '-' 
#     sleep 0.01;

# echo "\n"
# fortune
# echo "\n"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
