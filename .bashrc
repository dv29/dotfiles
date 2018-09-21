#!/bin/bash

# create tmp and backup folders for vim
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/swap
mkdir -p ~/.vim/undo

echo "Vim paths created"

declare -a packages=(
	"https://github.com/ctrlpvim/ctrlp.vim.git"
	"https://github.com/moll/vim-node.git"
	"https://github.com/scrooloose/nerdtree.git"
	"https://github.com/pangloss/vim-javascript.git"
	"https://github.com/w0rp/ale.git"
	"https://github.com/SirVer/ultisnips.git"
	"https://github.com/honza/vim-snippets.git"
	)

for i in "${packages[@]}"
do
				last=${i##*/}
				bare=${last%%.git}
				test -e ~/.vim/bundle/"$bare" || git clone "$i" ~/.vim/bundle/"$bare"
done

echo "Vim packages installed"






