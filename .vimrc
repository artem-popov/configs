" for vi-mode in bash, etc, use this:
" 'set -o vi'
" OR
" 'set editing-mode vi' to .inputrc
" you can remap capslock to esc with Seil  https://pqrs.org/osx/karabiner/seil.html
" The https://pqrs.org/osx/karabiner/
" allows turn your mac os into vim console
" brew install Caskroom/cask/seil
"
" tip: do :PluginInstall once before using.

" to hide files use:
" let NERDTreeIgnore = ['\.js$']

let g:netrw_liststyle=3

" alt tab fly on buffers
" nnoremap gb :ls<CR>:b<Space>
" nnoremap <s-tab> :b<Space><Tab>

" no need this at all: this list is not connected with history
" nnoremap <c-i> :bnext<cr>
" nnoremap <c-o> :bprev<cr>

set wildmenu
set wildcharm=<Tab>
set wildmode=full


set nocompatible " turn off vi compatibility mode
set modelines=0 "do not interpret modelines when editing file
let vimDir = '$HOME/.vim'

au FocusGained,BufEnter * :checktime
" autoread file when :checktime says this
set autoread
"au CursorHold * checktime "wrong with command mode
"set autowrite
"set autowriteall


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/Users/artem/.vim/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('/Users/artem/.vim'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:

call dein#add('L9')


"Bundles
"call dein#add('majutsushi/tagbar')
call dein#add('altercation/vim-colors-solarized')
call dein#add('FuzzyFinder')
" for tagbar install:
"npm install -g git://github.com/ramitos/jsctags.git
call dein#add('majutsushi/tagbar')
call dein#add('MarcWeber/vim-addon-mw-utils')
call dein#add("tomtom/tlib_vim")
call dein#add('garbas/vim-snipmate')
call dein#add('honza/vim-snippets')
" autoclose [], {}, etc
call dein#add('Raimondi/delimitMate')
call dein#add('tpope/vim-unimpaired')
call dein#add('tpope/vim-fugitive')
call dein#add('tComment')
call dein#add('jszakmeister/vim-togglecursor')
call dein#add('tpope/vim-surround')
" cd ~/.vim/bundle/YouCompleteMe ; ./install.sh --clang-completer ; cd -
"call dein#add('Valloric/YouCompleteMe')
" Using vim-easymotion instead :)
" call dein#add('justinmk/vim-sneak')
call dein#add('tomasr/molokai')
call dein#add('foldcol.vim')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('Lokaltog/vim-distinguished')
call dein#add('Chiel92/vim-autoformat')
call dein#add('Lokaltog/vim-easymotion')
call dein#add('tmhedberg/matchit')
call dein#add('sjl/gundo.vim')
call dein#add('scrooloose/nerdtree')
":%S/note{,s}/entr{y,ies}/g"
call dein#add('tpope/vim-abolish')
call dein#add('tpope/vim-repeat')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('Shougo/vimshell.vim')
call dein#add('mhinz/vim-grepper')
call dein#add('solarnz/thrift.vim')
" call dein#add('kassio/neoterm')

call dein#add('epegzz/epegzz.vim') " black
call dein#add('w0ng/vim-hybrid')
call dein#add('kristijanhusak/vim-hybrid-material')

"NeoBundle 'Shougo/vimproc.vim', {
""\ 'build' : {
""\     'windows' : 'tools\\update-dll-mingw',
""\     'cygwin' : 'make -f make_cygwin.mak',
""\     'mac' : 'make -f make_mac.mak',
""\     'linux' : 'make',
""\     'unix' : 'gmake',
""\    },
""\ }
" call dein#add('Shougo/unite.vim')
call dein#add('ctrlpvim/ctrlp.vim')

nnoremap <c-f> :CtrlP<cr><Space>
nnoremap <s-tab> :CtrlPBuffer<cr>


" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

call dein#add('amirh/HTML-AutoCloseTag')
" call dein#add('airblade/vim-gitgutter')
call dein#add('terryma/vim-expand-region')
call dein#add('YankRing.vim')
" call dein#add('reedes/vim-wheel')
call dein#add('godlygeek/tabular.git')
call dein#add('kana/vim-textobj-user')
call dein#add('sgur/vim-textobj-parameter')
call dein#add('thinca/vim-textobj-between')
call dein#add('editorconfig/editorconfig-vim')

" to enable suntactic do: npm install -g jsxhint
call dein#add('scrooloose/syntastic')
let g:syntastic_javascript_checkers = ['eslint', 'flow', 'stylelint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1

" turn it on or off
nnoremap <leader-n> :SyntasticToggleMode<cr>

" cd ~/.vim/bundle/tern_for_vim ; npm install
"NeoBundle 'marijnh/tern_for_vim', {
"            \ 'build' : {
"            \   'mac': 'npm install --update',
"            \   },
"            \ }

call dein#add('tpope/vim-dispatch.git')
call dein#add('jelera/vim-javascript-syntax')
" Intendation and syntax:
call dein#add("pangloss/vim-javascript")  " Required for vim-jsx to work correctly
call dein#add('mxw/vim-jsx')
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
" let g:syntastic_debug = 3   " Turn on if there are problems

" Lexical scope coloring:
":JSContextColorUpdate
let g:js_context_colors_insertmode = 0
"To disable:
" g:js_context_colors_enabled = 0
call dein#add('bigfish/vim-js-context-coloring')
call dein#add('bigfish/vim-js-context-coloring')
  " \ 'build' : {
  " \     'mac' : 'npm install --update',
  " \     'unix' : 'npm install --update',
  " \    },
  " \ }

call dein#add('raichoo/purescript-vim.git')
call dein#add('derekwyatt/vim-scala')
call dein#add('leafgarland/typescript-vim')
call dein#add('fatih/vim-go')
call dein#add('ajh17/Spacegray.vim')

call dein#add('eagletmt/neco-ghc')
call dein#add('bling/vim-airline')

" Plugin to show color palette:
":XtermColorTable
call dein#add('guns/xterm-color-table.vim')
call dein#add('Yggdroot/indentLine')
call dein#add('kien/rainbow_parentheses.vim')
" let g:rbpt_colorpairs = [
"     \ ['brown',       'RoyalBlue3'],
"     \ ['Darkblue',    'SeaGreen3'],
"     \ ['darkgray',    'DarkOrchid3'],
"     \ ['darkgreen',   'firebrick3'],
"     \ ['darkcyan',    'RoyalBlue3'],
"     \ ['darkred',     'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['brown',       'firebrick3'],
"     \ ['gray',        'RoyalBlue3'],
"     \ ['black',       'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['Darkblue',    'firebrick3'],
"     \ ['darkgreen',   'RoyalBlue3'],
"     \ ['darkcyan',    'SeaGreen3'],
"     \ ['darkred',     'DarkOrchid3'],
"     \ ['red',         'firebrick3'],
"     \ ]
" let g:rbpt_max = 16
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadChevrons

" Required at plugins end:
call dein#end()
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
 call dein#install()
endif

"End dein Scripts-------------------------

"Plugins settings:
set omnifunc=syntaxcomplete#Complete

let g:airline_powerline_fonts = 1
let g:niji_matching_filetypes = ['js']
" indent/javascript.vim
let g:SimpleJsIndenter_BriefMode = 1
let g:javascript_conceal = 1

inoremap <S-TAB> <c-h><c-h><c-h><c-h>
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)

" " Syntactic
" " Haskell
" " Type Lookup
" map <silent> <Leader>e :Errors<CR>
" map <Leader>s :SyntasticToggleMode<CR>
" " Reload
" map <silent> tu :call GHC_BrowseAll()<CR>
" " Type Lookup
" map <silent> tw :call GHC_ShowType(1)<CR>"always show error list
" " let g:syntastic_auto_loc_list=1
" " cabal update && cabal install ghc-mod hoogle
" " let g:syntastic_typescript_checkers = ['tslint']


" let g:syntastic_typescript_tsc_args = " | echo 'test' "

let g:EasyMotion_do_mapping = 0 " Disable default mappings
"word-around search
"actually fFtFwWeEbB is enough - enable sneak?
"nmap s <Plug>(easymotion-bd-w)
"1-char search
nmap s <Plug>(easymotion-s)
"nmap t <Plug>(easymotion-bd-t)
"2-chars search
nmap S <Plug>(easymotion-s2)
"nmap T <Plug>(easymotion-t2)
"n-char search
"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1 " US layout

" JK motions: Line motions
map zj <Plug>(easymotion-j)
map zk <Plug>(easymotion-k)

" nmap <tab> q:b#<CR>

" save session on exit, reload it on enter vim
"autocmd BufEnter,VimLeavePre * mksession! ./.session.vim
"autocmd VimEnter * so ./.session.vim

autocmd BufNewFile,BufRead /git/atlant.js/* set nowrap tabstop=4 shiftwidth=4

" nnoremap <C-Q> :Unite -quick-match -start-insert file_rec/async <cr>
" nnoremap <Space>/ :Unite -quick-match grep:. <cr>
" let g:unite_source_history_yank_enable = 1
" call unite#filters#matcher_default#use(['matcher_fuzzy'])
" nnoremap <Space>y :Unite -quick-match history/yank<cr>
" nnoremap <Space>s :Unite -no-split -quick-match buffer<cr>


" Sweet.js filetype: *.sjs
au! BufRead,BufNewFile *.sjs		setfiletype javascript

if !has('conceal')
    finish
endif
set conceallevel=2
setlocal conceallevel=2
" syntax keyword javaScriptLambda function conceal cchar=λ
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
set nobackup
set nowritebackup
set noswapfile " I've always save like maniac :)

" Use a low updatetime. This is used by CursorHold
" set updatetime=1000


" w!!: Writes using sudo
cnoremap w!! w !sudo tee % >/dev/null




" Theme
set background=dark
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
" colors mustang
" colors epegzz
colors hybrid_material
" let g:airline_theme = "hybrid"
" colors molokai
" colors distinguished
" colors spacegray
" let g:molokai_original=1
" let g:rehash256 = 1
" let g:solarized_termcolors=256
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"
" let g:solarized_termtrans = 1
" colorscheme solarized
" My theme :)
"hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE
"hi MatchParen cterm=none ctermbg=green ctermfg=blue
"hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

"uncomment to edit all area
"set virtualedit=all " onemore


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
set path+=./** " for gd/gf to find local files
" change dir to dir of opened file
" set autochdir
set clipboard=unnamed



" --- Text behaviour

" --- Tab specific options
set tabstop=2        "A tab is 2 spaces
set expandtab        "Always uses spaces instead of tabs
set softtabstop=2    "Insert 4 spaces when tab is pressed
set shiftwidth=2     "An indent is 2 spaces
" set shiftround       "Round indent to nearest shiftwidth multiple

" set autoindent "to check
" set cindent
" set smartindent
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
set showbreak=↪
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
nnoremap :  q:<cr>
nnoremap \g  :Grepper<cr>

" cancel arrows keys
" inoremap <Up> <NOP>
" inoremap <Down> <NOP>
" inoremap <Left> <NOP>
" inoremap <Right> <NOP>
" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <Right> <NOP>

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
"nnoremap ? q?i
"xnoremap ? q?i
nnoremap q: :
xnoremap q: :
" Have <esc> leave cmdline-window
autocmd CmdwinEnter * nnoremap <buffer> <esc> :q\|echo ""<cr>

nmap <F8> :TagbarToggle<CR>
nnoremap <F5> :GundoToggle<CR>
"/> end of keybindings

noremap j gj
noremap k gk
nnoremap U :redo<cr>
noremap H ^
noremap L g_
imap <leader><tab> <C-x><C-o>

" Source the vimrc file after saving it. This way, you don't have to reload Vim to see the changes.
if has("autocmd")
 augroup myvimrchooks
  au!
  autocmd bufwritepost .vimrc source ~/.vimrc
 augroup END
endif

"stuff to ignore when tab completing
set wildignore=*.bak,*.pyc,*.class,**/node_modules/**,**/app/components/**
set wildignore+=*.o,*.obj,*~
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/Library/**,*/.rbenv/**
set wildignore+=*/.nx/**,*.app
" --- Misc


" *** IndentLine
let g:indentLine_faster=1
let g:indentLine_char="¦"
if has('win32') || has('win64')
    let g:indentLine_char="│"
endif

" Zoom / Restore window.
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> \z  :ZoomToggle<CR>
" git config --global diff.tool vimdiff


" show special chars
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<


" tnoremap <M-h> <C-\><C-n><C-w>h
" tnoremap <M-j> <C-\><C-n><C-w>j
" tnoremap <M-k> <C-\><C-n><C-w>k
" tnoremap <M-l> <C-\><C-n><C-w>l
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l


"vim-ctrlspace
"vim-clojure-static      vim-fireplace           vim-niji
