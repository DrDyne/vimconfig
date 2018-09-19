set nocompatible
set noswapfile
set encoding=utf-8
set t_Co=256
"" SHOW TABS FROM HELL
set listchars=trail:~,tab:__,eol:;    " ,extends:>,precedes:<,nbsp:_
set nolist
set nowrap
""set colorcolumn=128 
set foldcolumn=0
set foldmethod=manual
set foldlevel=666

set expandtab " convert tabs to spaces
set shiftwidth=2 " set tab width
set tabstop=2
set conceallevel=3
filetype indent on

set ruler " line number in statusline

set incsearch
set hlsearch " highlight search
set smartcase " smart case matching
set ignorecase " case insensitive matching
set showmatch " show match when executing regexps

set tabpagemax=5
set hidden " hide buffers instead of closing (enables undo when switching buffers)

set binary noeol " do not put a carriage return at the end of the last line
""set backspace=indent,eol,start " FIX 'backspace' on macOS
""set t_kb=ctrl-vBACKSPACE " FIX 'backspace' on macOS
""fixdel "" FIX 'backspace' on macOS

"" nerdtree config
let g:NERDTreeMinimalUI = 1 "" hides fluff like help text
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightCursorline = 0
let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeLimitedSyntax = 1
let g:NERDTreeSyntaxEnabledExtensions = ['js', 'jsx', 'json', 'md', 'css']

call pathogen#infect()

autocmd! BufNewFile,BufRead *.json set ft=javascript
autocmd! BufNewFile,BufRead *.handlebars set ft=javascript
autocmd! BufNewFile,BufRead *.yml set ft=ruby

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
  set wildignore+=*.md,*.lock,tutorial/**,vendor/**,*.swp,*demo*/**,*.xml
  " ignore minified files "
  ""set wildignore+=*.min.js
  " ignore node modules "
  set wildignore+=node_modules/**
endif

"" ry custom key bindings
map <Leader>m :BufExplorer<CR>
map <Leader>[ :tabprevious<CR>
map <Leader>] :tabnext<CR>
map <Leader><Leader> :b#<CR>

map <Leader>t :%s/\t/  /g<CR>
map <Leader>tt :%s/\s\+$<CR>
map <Leader>ttt :%s/\r<CR> "" removes  bad window line endings
map <Leader>T :set expandtab<CR>:colors ry<CR>:retab<CR>

map <Leader>a :NERDTreeToggle<CR>

"" Documentation on how to write functions in .vimrc
"" http://www.ibm.com/developerworks/linux/library/l-vim-script-2/index.html
"" 
"" function! InviteLink ()
""   let line  = getline('.')
""   let line1 = substitute(line, 'http\(s\)\?\(:\/\/\|%3A%2F%2F\)', 'http://', 'g')
""   let new_line = substitute(line1, 'esl.silanis.com', '10.0.16.116', 'g')
""   call setline('.', new_line)
"" endfunction
"" 
"" function! esl:restartapache()
""   :! sudo service apache2 restart
"" endfunction
"" 
"" 
"" function! esl:restart()
""   :call esl:js:precompile()
""   :call esl:restartapache()
""   :call Refresh_firefox()
""   :! cowsay "restarted ESL"
"" endfunction

set cin
syntax on

colors ry