scriptencoding utf-8
set encoding=utf-8

call plug#begin('~/.vim/bundle')

" Plug 'vim-syntastic/syntastic'

" typescript > git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/bundle/typescript-vim.git
Plug 'leafgarland/typescript-vim'

call plug#end()

" fuzzy finder / ctrlp > git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|dist)|(\.(swp|ico|git))$'
  \ }

" Node.js > git clone https://github.com/moll/vim-node.git ~/.vim/bundle/vim-node
set runtimepath^=~/.vim/bundle/vim-node

" Treeview > git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
set runtimepath^=~/.vim/bundle/nerdtree

autocmd vimenter * NERDTreeToggle
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1
let g:NERDTreeShowIgnoredStatus = 1
map <C-n> :NERDTreeToggle<CR>
" autoclose nerdtree if its last window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Git support for nerdtree > https://github.com/Xuyuanp/nerdtree-git-plugin.git ~/.vim/bundle/nerdtree-git-plugin
set runtimepath^=~/.vim/bundle/nerdtree-git-plugin


" JS > git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
set runtimepath^=~/.vim/bundle/vim-javascript

" ALE / Linting > git clone https://github.com/w0rp/ale.git ~/.vim/bundle/ale
set runtimepath^=~/.vim/bundle/ale
let g:ale_linters = {
	\ 'javascript': ['eslint'],
	\ }

" snippets > git clone https://github.com/SirVer/ultisnips.git ~/.vim/bundle/ultisnips
set runtimepath^=~/.vim/bundle/ultisnips

" snippets > git clone https://github.com/honza/vim-snippets.git ~/.vim/bundle/vim-snippets
set runtimepath^=~/.vim/bundle/vim-snippets

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/dotfiles/UltiSnips']

" status bar > git clone https://github.com/vim-airline/vim-airline.git
" ~/.vim/bundle/vim-airline
set runtimepath^=~/.vim/bundle/vim-airline

" status bar theam > git clone https://github.com/vim-airline/vim-airline-themes.git
" ~/.vim/bundle/vim-ariline-themes
set runtimepath^=~/.vim/bundle/vim-airline-themes
let g:airline_theme='simple'

" commenting > git clone https://github.com/tpope/vim-commentary.git
" ~/.vim/bundle/vim-commentry
set runtimepath^=~/.vim/bundle/vim-commentary

" tabline to show tab number > git clone
" https://github.com/mkitt/tabline.vim.git ~/.vim/bundle/tabline.vim
set runtimepath^=~/.vim/bundle/tabline.vim

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set number
set tabstop=2
set list
" set nolist
set listchars+=eol:¬,tab:»»,trail:~,extends:>,precedes:<,space:·
set expandtab
set hlsearch
set shiftwidth=2
set guitablabel=%N\ %f
set autoread
set backspace=eol,indent,start
hi SpecialKey ctermfg=DarkGrey
hi NonText ctermfg=DarkGrey

" Custom mappings
nmap ef :ALEFix eslint<CR>¬
