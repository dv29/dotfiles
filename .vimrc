scriptencoding utf-8
set encoding=utf-8

call plug#begin('~/.vim/bundle')

" Plug 'vim-syntastic/syntastic'

" typescript > git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/bundle/typescript-vim.git
Plug 'leafgarland/typescript-vim'
" Plug 'Valloric/YouCompleteMe'
Plug 'mxw/vim-jsx'

call plug#end()

" to disable youcompleteme uncomment the next line
let g:loaded_youcompleteme = 1

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
let g:javascript_plugin_jsdoc = 1

" ALE / Linting > git clone https://github.com/w0rp/ale.git ~/.vim/bundle/ale
set runtimepath^=~/.vim/bundle/ale
let g:ale_debug = "msg"
let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \ }
let g:airline#extensions#ale#enabled = 1

" snippets > git clone https://github.com/SirVer/ultisnips.git ~/.vim/bundle/ultisnips
set runtimepath^=~/.vim/bundle/ultisnips

" snippets > git clone https://github.com/honza/vim-snippets.git ~/.vim/bundle/vim-snippets
set runtimepath^=~/.vim/bundle/vim-snippets

let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/bundle/vim-snippets/UltiSnips', $HOME.'/dotfiles/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<C-t>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
let g:UltiSnipsEditSplit="vertical"
let g:snips_author="Vora, Deep"

" status bar > git clone https://github.com/vim-airline/vim-airline.git
" ~/.vim/bundle/vim-airline
set runtimepath^=~/.vim/bundle/vim-airline

" status bar theme > git clone https://github.com/vim-airline/vim-airline-themes.git
" ~/.vim/bundle/vim-ariline-themes
set runtimepath^=~/.vim/bundle/vim-airline-themes
let g:airline_theme='simple'

" commenting > git clone https://github.com/tpope/vim-commentary.git
" ~/.vim/bundle/vim-commentry
set runtimepath^=~/.vim/bundle/vim-commentary

" tabline to show tab number > git clone
" https://github.com/mkitt/tabline.vim.git ~/.vim/bundle/tabline.vim
set runtimepath^=~/.vim/bundle/tabline.vim

" editorconfig > git clone https://github.com/editorconfig/editorconfig-vim.git 
" ~/.vim/bundle/editorconfig-vim
set runtimepath^=~/.vim/bundle/editorconfig-vim

" " dust > git clone https://github.com/jimmyhchan/dustjs.vim.git
" " ~/.vim/bundle/dustjs.vim
" set runtimepath^=~/.vim/bundle/dustjs.vim

" JsDocblocks > git clone https://github.com/heavenshell/vim-jsdoc.git
" ~/.vim/bundle/vim-jsdoc
set runtimepath^=~/.vim/bundle/vim-jsdoc

" jsx configs
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set number
set tabstop=2
set list
" set nolist
set listchars+=eol:¬,tab:»»,trail:~,extends:>,precedes:<,space:·
" set expandtab
set hlsearch
set shiftwidth=2
set guitablabel=%N\ %f
set autoread
set backspace=eol,indent,start
set relativenumber
hi SpecialKey ctermfg=238
hi NonText ctermfg=238
hi MatchParen ctermbg=245

" Custom mappings
nmap fe :ALEFix eslint<CR>¬
nmap fp :ALEFix prettier<CR>¬
nmap sh :set hls!<CR>
nmap mm :ALEToggle<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
