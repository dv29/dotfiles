# Install bash-git-prompt
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          
      machine="UNKNOWN:${unameOut}"
      echo ${machine}
esac

if [[ ! -d ~/.bash-git-prompt ]]; then
    git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
fi

# if [[ ! -d ~/.bash_it ]]; then
#   git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
#   . ~/.bash_it/install.sh
# fi

if [[ ! -d ~/.vim ]]; then
    echo "Initializing vim configurations"
    source ~/dotfiles/.init_vim.sh
fi

GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

if [ $machine = 'Mac' ]; then
    alias ls='ls -G'
fi

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias gs="git status"
alias ga="git add ."
alias gcom="git commit -m"
alias gsh="git stash"
alias gcm="git checkout master"
alias gcnb="git checkout -b "
alias gcb="git checkout "
alias gd="git diff --cached"
alias gk="gitk"
alias grm="git rebase -i master" 
alias gpl="git pull" 
alias gpu="git push"
alias grm="git rebase -i origin/master"
alias gd="git diff HEAD"
alias gr="git reset"
alias reinitpack="rm -rf node_modules/ package-lock.json && npm i"

pushCurrentBranch() {
    git push -u origin $(git rev-parse --abbrev-ref HEAD)
}
alias gpb=pushCurrentBranch

alias nrb="npm run build"
