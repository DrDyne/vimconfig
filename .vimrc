set nocompatible
set noswapfile
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
filetype indent on
""set autoindent

set ruler " line number in statusline

"" fugitive (GIT plugin for VIM) additional info in the status line
""set statusline+=%{fugitive#statusline()}

""runtime path
set runtimepath^=~/.vim/bundle/ctrlp.vim

"" add syntax check info in status line
""set statusline+=%#warningmsg#
""set statusline+=%{SyntasticStatuslineFlag()}
""set statusline+=%*


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

call pathogen#infect()

autocmd! BufNewFile,BufRead *.json set ft=javascript
autocmd! BufNewFile,BufRead *.handlebars set ft=javascript
autocmd! BufNewFile,BufRead *.yml set ft=ruby

""very useful autohighlight word under cursor
autocmd! CursorMoved * silent! exe printf('match IncSearch /\<%s\>/', expand('<cword>'))

"" automatically refresh firefox when haml, sass, or js files are saved
""autocmd! BufWriteCmd *.haml,*.sass,*.js,*.yml call Refresh_firefox()
""function! Refresh_firefox()
""  if &modified
""    write
""    silent !echo  'vimYo = content.window.pageYOffset;
""          \ vimXo = content.window.pageXOffset;
""          \ BrowserReload();
""          \ content.window.scrollTo(vimXo,vimYo);
""          \ repl.quit();'  |
""          \ nc -w 1 localhost 4242 2>&1 > /dev/null
""  endif
""endfunction

"" regenerate js translation json files after saving i18n/*.yml
""autocmd! BufWriteCmd i18n/*.yml call Generate_JS_translation_JSONs()
""function! Generate_JS_translation_JSONs()
""  if &modifed
""    write
""    silent !echo "rake i18n:extract"
""    silent !echo "rake i18n:sort"
""    silent !echo "rake i18n:jsgenerate"
""  endif
""endfunction

"" run unit tests after saving a view.(rb|js) file


""can't make that work..
""autocmd BufReadPost * " spellchecking
""\ if line("'\"") > 0 && line("'\"") <= line("") |
""\   exe "normal g`\"" |
""\ endif


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

"" - - - - - - - - - - - - - - - >  CTRLP   < - - - - - - - - - - - - - - - "
let g:ctrlp_custom_ignore = '.*(node_modules\/.*|bower_components\/.*|fonts\/.*|images\/.*|.git\/.*|.*\.map)'
"" - - - - - - - - - - - - - - - >  CTRLP   < - - - - - - - - - - - - - - - "

"" - - - - - - - - - - - - - - - > COMMANDT < - - - - - - - - - - - - - - - "
""let g:CommandTMaxHeight=15
""map <Leader>f :CommandT /home/remy/git/esl.frontend<CR>
""map <Leader>F :CommandTFlush<CR>
"" - - - - - - - - - - - - - - - > COMMANDT < - - - - - - - - - - - - - - - "

map <Leader>m :BufExplorer<CR>
map <Leader>[ :tabprevious<CR>
map <Leader>] :tabnext<CR>
map <Leader><Leader> :b#<CR>

map <Leader>t :%s/\t/  /g<CR>
map <Leader>tt :%s/\s\+$<CR>
map <Leader>ttt :%s/\r<CR> "" removes  bad window line endings
map <Leader>T :set expandtab<CR>:colors ry<CR>:retab<CR>

"" color and indent json files using PYTHON
""map <Leader>TJ :%!python -m json.tool<CR>:colors json<CR>
map <Leader>k :cclose<CR>
map <Leader>a :NERDTreeToggle<CR>
map <Leader>s :CtrlPMRU<CR>
map <Leader>doc :JsDoc<CR>
map <leader>doc ?function<cr>:noh<cr><Plug>(jsdoc)

"" Documentation on how to write functions in .vimrc
"" http://www.ibm.com/developerworks/linux/library/l-vim-script-2/index.html

"" function! LineBreak80() "" helps to show where line should break
""   :%s/\(^.\{80\}\)/\1|/g
"" endfunction 
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
"" function! esl:refresh_templates()
""   :call esl:js:precompile()
""   :call Refresh_firefox()
"" endfunction
"" 
"" function! esl:js:precompile()
""   :! rake js:precompile
"" endfunction
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