call plug#begin('~/.vim/bundle')

" Plug 'vim-syntastic/syntastic'

call plug#end()

" fuzzy finder / ctrlp > git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|dist)|(\.(swp|ico|git))$'
  \ }

" Node.js > git clone https://github.com/moll/vim-node.git ~/.vim/bundle/node
set runtimepath^=~/.vim/bundle/node

" Treeview > git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
set runtimepath^=~/.vim/bundle/nerdtree

autocmd vimenter * NERDTreeToggle
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" Git support for nerdtree > https://github.com/Xuyuanp/nerdtree-git-plugin.git ~/.vim/bundle/nerdtree-git-plugin
set runtimepath^=~/.vim/bundle/nerdtree-git-plugin


" JS > git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
set runtimepath^=~/.vim/bundle/vim-javascript

" ALE / Linting > git clone https://github.com/w0rp/ale.git ~/.vim/bundle/ale
set runtimepath^=~/.vim/bundle/ale
let g:ale_linters = {
	\ 'javascript': ['eslint'],
	\ }

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set number
set tabstop=2
