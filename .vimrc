""start of Vundle configuration
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

""list all used plugins here so that running :PluginInstall from vim installs everything \o/
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/nerdtree'
Plugin 'wesQ3/vim-windowswap'
Plugin 'honza/vim-snippets'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'othree/yajs.vim'

call vundle#end()

set nocompatible
set noswapfile
set nobackup
set t_Co=256
"" SHOW TABS FROM HELL
set listchars=trail:~,tab:__,eol:;    " ,extends:>,precedes:<,nbsp:_
set nolist
set nowrap
""set colorcolumn=128 

set foldlevelstart=1
set shiftwidth=2 " set tab width
""set shiftround " use multiple of shiftwidth when indenting with '<' and '>'
set tabstop=2
set expandtab " convert tabs to spaces
""filetype indent on
filetype plugin on
""set autoindent

"set ruler " line number in statusline

set incsearch
set hlsearch " highlight search
set smartcase " smart case matching
set ignorecase " case insensitive matching
set showmatch " show match when executing regexps
set synmaxcol=200 " maximum column in which to search for syntax items

set tabpagemax=5
set hidden " hide buffers instead of closing (enables undo when switching buffers)
"" vim-airline -- displays all buffers when there is only one tab open
autocmd VimEnter * AirlineTheme bubblegum

set binary noeol " do not put a carriage return at the end of the last line
""set backspace=indent,eol,start " FIX 'backspace' on macOS
""set t_kb=ctrl-vBACKSPACE " FIX 'backspace' on macOS
""fixdel "" FIX 'backspace' on macOS
""end of Vundle configuration

autocmd BufEnter * set cursorline 
autocmd BufEnter *.js,*.json set cursorcolumn
autocmd BufEnter *.js setlocal syntax=javascript
autocmd BufEnter *.js colors ry2
""autocmd BufEnter BufExplorer colors shine
autocmd BufRead * setlocal foldmethod=syntax
autocmd BufRead * setlocal foldlevel=1
autocmd BufRead * setlocal foldnestmax=4
autocmd BufRead *.js g/^\/\*/foldclose ""auto fold multiline comments

""very useful autohighlight word under cursor
autocmd! CursorMoved * silent! exe printf('match IncSearch /\<%s\>/', expand('<cword>'))

"" remy : shortcuts FROM HELL YEAH
let mapleader = ','

map <Leader>x :set cursorline cursorcolumn<CR>
map <Leader>X :set nocursorline nocursorcolumn<CR>
map <Leader>C :w<CR>:!aspell -c %<CR>:e %<CR>

"" WILDMENU WILDMODE autocomplete vim commands -- check :help wildmode
if has("wildmenu")
  set wildmenu
  set wildmode=list:full

  " CommantT plugin configuration " + " ignore compilator assets "
  set wildignore+=*.o,*.obj
  " ignore svn/git files "
  set wildignore+=*.svn,*.git
  " ignore media: images "
  ""set wildignore+=*.png,*.bmp,*.jpg,*.gif,*.swf
  " ignore media: sounds "
  set wildignore+=*.mp3,*.mp4
  " ignore other crap files "
  set wildignore+=*.lock,tutorial/**,vendor/**,*.swp,*demo*/**,*.xml
  " ignore minified files "
  ""set wildignore+=*.min.js
  " ignore node modules "
  set wildignore+=node_modules/**
endif

map <Leader>a :NERDTreeToggle<CR>
map <Leader>m :BufExplorer<CR>
map <Leader>[ :tabprevious<CR>
map <Leader>] :tabnext<CR>
map <Leader><Leader> :b#<CR>

map <Leader>t :%s/\t/  /g<CR>
map <Leader>tt :%s/\s\+$<CR>
map <Leader>ttt :%s/\r<CR> "" removes  bad window line endings
map <Leader>T :set expandtab<CR>:retab<CR>

"" Documentation on how to write functions in .vimrc
"" http://www.ibm.com/developerworks/linux/library/l-vim-script-2/index.html

set cin
syntax on
"syntax sync fromstart