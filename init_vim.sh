#!/bin/bash

# getting the system information
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    # CYGWIN*)    machine=Cygwin;;
    # MINGW*)     machine=MinGw;;
    *)
      machine="UNKNOWN:${unameOut}"
      echo ${machine}
esac

# create tmp and backup folders for vim
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/swap
mkdir -p ~/.vim/undo

echo "==> Vim paths created"

# Installing plugin manager for vim 

if [[ ! -f ~/.vim/autoload/plug.vim ]]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  echo "==> Plugin manager for vim installed"
fi

# if [[ ! -f ~/.vim/autoload/Vundle.vim ]]; then
#   git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#   echo "==> Plugin manager for vim installed"
# fi

# declare -a packages=(
#   "https://github.com/ctrlpvim/ctrlp.vim.git"
#   "https://github.com/moll/vim-node.git"
#   "https://github.com/scrooloose/nerdtree.git"
#   "https://github.com/pangloss/vim-javascript.git"
#   "https://github.com/SirVer/ultisnips.git"
#   "https://github.com/honza/vim-snippets.git"
#   "https://github.com/leafgarland/typescript-vim.git"
#   "https://github.com/vim-airline/vim-airline.git"
#   "https://github.com/vim-airline/vim-airline-themes.git"
#   "https://github.com/tpope/vim-commentary.git"
#   "https://github.com/mkitt/tabline.vim.git"
#   "https://github.com/editorconfig/editorconfig-vim.git"
#   )

# for i in "${packages[@]}"
# do
#   last=${i##*/}
#   bare=${last%%.git}
#   test -e ~/.vim/bundle/"$bare" || git clone "$i" ~/.vim/bundle/"$bare"
# done

echo "==> Initializing vim packages and compiling"
vim +PlugInstall +qall +silent
# vim +PluginInstall +qall

if [ $machine = 'Linux' ]; then
  echo "Linux";
  # sudo apt install -y build-essential cmake python3-dev
elif [ $machine = 'Mac' ]; then
  # brew install cmake
  brew install shellcheck
fi

# compile YMC for autocomplete
python3 ~/.vim/bundle/YouCompleteMe/install.py --all

echo "Vim packages installed"
