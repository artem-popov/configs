" for vi-mode in bash, etc, use this:
" 'set -o vi'
" OR
" 'set editing-mode vi' to .inputrc
" you can remap capslock to esc with Seil  https://pqrs.org/osx/karabiner/seil.html 
" The https://pqrs.org/osx/karabiner/
" allows turn your mac os into vim console
"
" tip: do :PluginInstall once before using.

set nocompatible " turn off vi compatibility mode
set modelines=0 "do not interpret modelines when editing file
let vimDir = '$HOME/.vim'

" save on lost focus and reload on gain focus
au FocusGained,BufEnter * :checktime
" autoread file when :checktime says this
set autoread

" Vundle init
filetype off " vundle requires this
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'gmarik/Vundle.vim'
Bundle 'L9'

"Bundles
"Bundle 'majutsushi/tagbar'
Bundle 'altercation/vim-colors-solarized'
Bundle 'FuzzyFinder'
" for tagbar install:
"npm install -g git://github.com/ramitos/jsctags.git
Bundle 'majutsushi/tagbar'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle "tomtom/tlib_vim"
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
" autoclose [], {}, etc
Bundle 'Raimondi/delimitMate'
" to enable suntactic do: npm install -g jshint
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-fugitive'
Bundle 'tComment'
Bundle 'jszakmeister/vim-togglecursor'
Bundle 'tpope/vim-surround'
" cd ~/.vim/bundle/tern_for_vim ; npm install
Bundle 'marijnh/tern_for_vim'
" cd ~/.vim/bundle/YouCompleteMe ; ./install.sh --clang-completer ; cd -
"Bundle 'Valloric/YouCompleteMe'
" Using vim-easymotion instead :)
" Bundle 'justinmk/vim-sneak'
Bundle 'jelera/vim-javascript-syntax'
Bundle "pangloss/vim-javascript"
Bundle 'tomasr/molokai'
Bundle 'foldcol.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'Chiel92/vim-autoformat'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tmhedberg/matchit'
Bundle 'sjl/gundo.vim'
Bundle 'scrooloose/nerdtree'
":%S/note{,s}/entr{y,ies}/g"
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-repeat'
Bundle 'terryma/vim-multiple-cursors' 

"Plugins settings:
let g:niji_matching_filetypes = ['js']
" indent/javascript.vim
let g:SimpleJsIndenter_BriefMode = 1
let g:javascript_conceal = 1

let g:EasyMotion_do_mapping = 0 " Disable default mappings
"word-around search
nmap s <Plug>(easymotion-bd-w)
"1-char search
nmap f <Plug>(easymotion-s)
nmap t <Plug>(easymotion-bd-t)
"2-chars search
nmap F <Plug>(easymotion-s2)
nmap T <Plug>(easymotion-t2)
"n-char search
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1 " US layout

" JK motions: Line motions
map zj <Plug>(easymotion-j)
map zk <Plug>(easymotion-k)

call vundle#end()            
filetype plugin indent on " required by vundle
"end of vundle config

if !has('conceal')
    finish
endif
set conceallevel=2
setlocal conceallevel=2
syntax keyword javaScriptLambda function conceal cchar=λ
highlight clear Conceal
highlight link Conceal Identifier
highlight link javaScriptLambda Identifier

" control undo
let mySwapDir = expand(vimDir . '/swapfiles')
let myUndoDir = expand(vimDir . '/undodir')
call system('mkdir -p ' . mySwapDir)
call system('mkdir -p ' . myUndoDir)

set undofile                " Save undo's after file closes
let &undodir = myUndoDir    " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
set undolevels=1000
set history=1000
set directory=$HOME/.vim/swapfiles// "relative directory for all .swp files

call system('rm -rf ' . mySwapDir . '/*')
set noswapfile " I've always save like maniac :) 


" Theme
" colors mustang
" colors molokai
colors distinguished
"let g:molokai_original=1
" let g:rehash256 = 1
" set background=dark
" let g:solarized_termcolors=256
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"
" let g:solarized_termtrans = 1
" colorscheme solarized
" My theme :)
"hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE
"hi MatchParen cterm=none ctermbg=green ctermfg=blue
"hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

" --- Editor theme
set number
set relativenumber
set ruler
set mouse=a
syntax on " highlight the syntax!
set ignorecase "ignore case when you are lowercase in search
set smartcase "case sensitive when at least one letter is uppercase

" Following 3 lines are highlights code when you type in search
set incsearch
set showmatch
set hlsearch

" --- Files section
" Autosave
"set updatetime=1000
""autocmd CursorHoldI,CursorHold * :update
"set undofile " creates undofile
set path+=./** " for gd/gf to find local files
set autoread
" change dir to dir of opened file
"set autochdir
set clipboard=unnamed



" --- Text behaviour
set autoindent "to check
set cindent
set shiftwidth=4
set tabstop=4
set expandtab
set smartindent
set showcmd
set showmode " dont know
set noshowmatch " when matching bracket is typed don't jump to it - it is better without of it.
set scrolloff=3 " always visible lines at edge of screen
set encoding=utf-8
set hidden " do not kill buffer on hide 
" not yet released :)
"set breakindent

" --- Fold
"let javaScript_fold=1
set foldmethod=indent
set foldlevel=0



" --- Wrap
set wrap
set linebreak
set nolist
set showbreak=…
set noerrorbells
set vb
set t_Co=256
set cursorline


" --- Bindings

" Reduce timeout after <ESC> is recvd. This is only a good idea on fast links.
set ttimeout
set ttimeoutlen=20
set notimeout


" vim russian bindings
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .

map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >

" cancels highlighting created by hlsearch
nmap \q :nohlsearch<CR>
"paranoic regexp mode
"nnoremap / /\v
"vnoremap / /\v
inoremap jj <esc>`^
inoremap <f2> <esc>`^

let CursorColumnI = 0 "the cursor column position in INSERT
autocmd InsertEnter * let CursorColumnI = col('.')
autocmd CursorMovedI * let CursorColumnI = col('.')
autocmd InsertLeave * if col('.') != CursorColumnI | call cursor(0, col('.')+1) | endif

" clear all tailing whitespaces in file
nnoremap \t :%s/\s\+$//<cr>:let @/=''<CR>
" start vimrc in split
nnoremap \v <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap \\ :NERDTree<cr>
nnoremap \w :w<cr>
nnoremap \W :w<cr>
nnoremap \:  q:<cr>

" cancel arrows keys
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


" Move lines
" Move one line
nmap <C-S-k> ddkP
nmap <C-S-j> ddp
" Move selected lines
" See http://www.vim.org/scripts/script.php?script_id=1590
vmap <C-S-k> xkP'[V']
vmap <C-S-j> xp'[V']

" Swap default ':', '/' and '?' with cmdline-window equivalent.
nnoremap : q:i
xnoremap : q:i
" being enabled hides highlighting, also I'm using easymotion for search.
"nnoremap / q/i
"xnoremap / q/i
nnoremap ? q?i
xnoremap ? q?i
nnoremap q: :
xnoremap q: :
nnoremap q/ /
xnoremap q/ /
nnoremap q? ?
xnoremap q? ?
" Have <esc> leave cmdline-window
autocmd CmdwinEnter * nnoremap <buffer> <esc> :q\|echo ""<cr>

nmap <F8> :TagbarToggle<CR>
"/> end of keybindings

"
set wildignore=*.swp,*.bak,*.pyc,*.class,node_modules/**
" --- Misc



" git config --global diff.tool vimdiff

"syntastic               vim-ctrlspace       
"nerdtree                vim-clojure-static      vim-fireplace           vim-niji                vim-sneak
