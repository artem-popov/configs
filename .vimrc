" for vi-mode in bash, etc, use this:
" 'set -o vi' 
" OR
" 'set editing-mode vi' to .inputrc
" you can remap capslock to esc with PCKeyboardHack  https://pqrs.org/macosx/keyremap4macbook/pckeyboardhack.html

set nocompatible " turn off vi compatibility mode
set modelines=0 "do not interpret modelines when editing file

set autoindent "to check

set ignorecase "ignore case when you are lowercase in search
set smartcase "case sensitive when at least one letter is uppercase

" Following 3 lines are highlights code when you type in search
set incsearch
set showmatch
set hlsearch
" cancels highlighting created by hlsearch
nmap \q :nohlsearch<CR> 
nnoremap / /\v
vnoremap / /\v
inoremap jj <esc>`^
inoremap <f2> <esc>`^

" Reduce timeout after <ESC> is recvd. This is only a good idea on fast links.
set ttimeout
set ttimeoutlen=20
set notimeout

" clear all tailing whitespaces in file
nnoremap \t :%s/\s\+$//<cr>:let @/=''<CR>
" start vimrc in split
nnoremap \v <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap \\ :e.<cr> 
nnoremap \w :w<cr>
nnoremap \W :w<cr>
nnoremap \:  q:<cr>

nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>

"set updatetime=1000
""autocmd CursorHoldI,CursorHold * :update  
"set undofile " creates undofile

    
" change dir to dir of opened file
set autochdir

set clipboard=unnamed
syntax on " highlight the syntax!

set directory=$HOME/.vim/swapfiles// "relative directory for all .swp files

set number
set relativenumber
set ruler

set history=1000

set undolevels=1000
set mouse=a

set shiftwidth=4
set tabstop=4
set expandtab
set smartindent
set showcmd
set showmode " dont know
set noshowmatch " when matching bracket is typed don't jump to it - it is better without of it.
set scrolloff=3 " always visible lines at edge of screen
set encoding=utf-8
set hidden " do not kill buffer on hide " do not really know it

"let javaScript_fold=1
set foldmethod=indent
set foldlevel=0

filetype off

"source ~/.vim/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

"set runtimepath^=~/.vim/bundle/ctrlp.vim " for ctrlP plugin

"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>  

" git config --global diff.tool vimdiff

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



" Convenient command to see the difference between the current buffer and the
" " file it was loaded from, thus the changes you made.
if !exists(":DiffOrig")
   command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
           \ | wincmd p | diffthis
endif

" Wrap
set wrap 
set linebreak
set nolist
set showbreak=…
set noerrorbells
set vb
set t_Co=256
set cursorline

"My theme :)
"hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE
"hi MatchParen cterm=none ctermbg=green ctermfg=blue
"hi MatchParen cterm=bold ctermbg=none ctermfg=magenta



colors molokai




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





let g:niji_matching_filetypes = ['js'] 
