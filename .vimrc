" set nocompatible
" filetype off

scriptencoding utf-8
set encoding=utf-8

"""""""""""""""""
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin('~/.vim/bundle')

" " Plug 'vim-syntastic/syntastic'

" Plugin 'VundleVim/Vundle.vim'
" Plugin 'leafgarland/typescript-vim'
" Plugin 'ycm-core/YouCompleteMe'
" Plugin 'mxw/vim-jsx'
" Plugin 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plugin 'dense-analysis/ale'
" Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'jparise/vim-graphql'
" Plugin 'heavenshell/vim-jsdoc', {
"   \ 'for': ['javascript', 'javascript.jsx','typescript'],
"   \ 'do': 'make install'
" \}

" call vundle#end()

" filetype plugin indent on
"""""""""""""""""

""""""""""""""""""
call plug#begin('~/.vim/bundle')

" Plug 'vim-syntastic/syntastic'

" typescript > git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/bundle/typescript-vim.git
Plug 'leafgarland/typescript-vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'mxw/vim-jsx'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'dense-analysis/ale'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jparise/vim-graphql'
Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
\}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'hashivim/vim-terraform'
Plug 'mustache/vim-mustache-handlebars'


Plug  'ctrlpvim/ctrlp.vim'
Plug  'moll/vim-node'
Plug  'scrooloose/nerdtree'
Plug  'pangloss/vim-javascript'
Plug  'SirVer/ultisnips'
Plug  'honza/vim-snippets'
Plug  'leafgarland/typescript-vim'
Plug  'vim-airline/vim-airline'
Plug  'vim-airline/vim-airline-themes'
Plug  'tpope/vim-commentary'
Plug  'mkitt/tabline.vim'
Plug  'editorconfig/editorconfig-vim'

 
" Plug 'godlygeek/tabular'

call plug#end()
""""""""""""""""""

" to disable youcompleteme uncomment the next line
" let g:loaded_youcompleteme = 1
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

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
let NERDTreeShowBookmarks=1
let g:NERDTreeGitStatusShowIgnored = 1
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
  \ 'sh': ['shellcheck'] ,
  \ 'javascript': ['eslint'],
  \ 'cpp': ['cpplint'],
  \ 'go': ['gofmt', 'golint', 'govet', 'gopls'],
  \ 'rust': ['rls']
  \ }
let g:ale_fixers = {
  \ 'rust': ['rustfmt'],
  \ }
let g:ale_completion_enabled = 1
let g:ale_rust_rls_toolchain = 'stable'
let g:airline#extensions#ale#enabled = 1
let g:ale_rust_rustfmt_options = '--edition 2018'
" let g:ale_open_list = 1
" let g:ale_sign_column_always = 1
" let g:ale_sign_error = '>>'
" let g:ale_sign_warning = '--'

" snippets > git clone https://github.com/SirVer/ultisnips.git ~/.vim/bundle/ultisnips
set runtimepath^=~/.vim/bundle/ultisnips

" snippets > git clone https://github.com/honza/vim-snippets.git ~/.vim/bundle/vim-snippets
set runtimepath^=~/.vim/bundle/vim-snippets

let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/bundle/vim-snippets/UltiSnips', $HOME.'/dotfiles/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
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

" go configs
let g:go_fold_enable = []
let g:go_debug=['shell-commands']
let g:go_def_mode='gopls'
nmap <C-F10> :GoDebugNext<CR>¬
nmap <C-F11> :GoDebugStep<CR>¬

 " tsx configs
autocmd BufNewFile,BufRead *.tsx set filetype=javascript.jsx

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
set relativenumber
set ignorecase
set incsearch
set completeopt-=preview
set foldmethod=syntax
set foldlevel=3
autocmd FileType yaml setlocal foldmethod=indent

hi SpecialKey ctermfg=236
hi NonText ctermfg=236
hi MatchParen ctermbg=245
hi ALEWarning ctermbg=172
hi ALEError ctermbg=124
hi Folded ctermbg=234

" Custom mappings
nmap fe :ALEFix eslint<CR>¬
nmap fp :ALEFix prettier<CR>¬
nmap fc :ALEFix cpplint<CR>¬
nmap fgg :ALEFix gofmt<CR>¬
nmap fr :ALEFix rustfmt<CR>¬
nmap sh :set hls!<CR>
nmap sfl :set foldlevel=1<CR>
nmap mm :ALEToggle<CR>
nmap gj :JsDoc<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

nmap ge :!clear && g++ -std=c++17 -Wshadow -Wall -D LOCAL -o ~/project/competitive_programming/a.out % -O2 -Wno-unused-result<CR>
nmap gr :!./a.out<CR>¬

