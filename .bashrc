# Install bash-git-prompt

if [[ ! ~/.bash-git-prompt ]]; then
  echo "dasdf"
  git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
fi

GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

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

pushCurrentBranch() {
	git push -u origin $(git rev-parse --abbrev-ref HEAD)
}
alias gpb=pushCurrentBranch

