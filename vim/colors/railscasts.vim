" Vim color scheme
"
" Name:         railscasts.vim
" Maintainer:   Nick Moffitt <nick@zork.net>
" Last Change:  01 Mar 2008
" License:      WTFPL <http://sam.zoy.org/wtfpl/>
" Version:      2.1
"
" This theme is based on Josh O'Rourke's Vim clone of the railscast
" textmate theme.  The key thing I have done here is supply 256-color
" terminal equivalents for as many of the colors as possible, and fixed
" up some of the funny behaviors for editing e-mails and such.
"
" To use for gvim:
" 1: install this file as ~/.vim/colors/railscasts.vim
" 2: put "colorscheme railscasts" in your .gvimrc
"
" If you are using Ubuntu, you can get the benefit of this in your
" terminals using ordinary vim by taking the following steps:
"
" 1: sudo apt-get install ncurses-term
" 2: put the following in your .vimrc
"     if $COLORTERM == 'gnome-terminal'
"         set term=gnome-256color
"         colorscheme railscasts
"     else
"         colorscheme default
"     endif
" 3: if you wish to use this with screen, add the following to your .screenrc:
"     attrcolor b ".I"
"     termcapinfo xterm 'Co#256:AB=\E[48;5;%dm:AF=\E[38;5;%dm'
"     defbce "on"
"     term screen-256color-bce

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

syn match semicolon ';'
syn match wrongsemicolon '\s;'
syn match colon '[:=><]'
syn match question ' ? '
syn match exclamation '!'
"doesn't work...
"syn match arrow '(=>)'
syn match Parentheses display '[()]'
syn match EmptyParentheses display '(\s*)'
syn match Moustaches display '[{}]'
syn match EmptyMoustaches display '{\s*}'
syn match SqBrackets display '[\[\]]'
syn match EmptySqBrackets display '\[\s*\]'
syn match Dollar display '\$'
syn match LeadingComa display '^\s*,'
syn match Coma display '[,\.]'
"syn match Braces display '[{}()\[\]]'
syn match ExtraSpaces display '\s\+$'

highlight EmptyParentheses guifg=#ff9966
highlight Parentheses guifg=#ff9966 gui=bold

highlight EmptyMoustaches guifg=#cc9900
highlight Moustaches guifg=#cc9900 gui=bold

highlight EmptySqBrackets guifg=#cccc66
highlight SqBrackets guifg=#cccc66 gui=bold

highlight semicolon guifg=#666666 gui=italic
highlight wrongsemicolon guifg=red gui=italic
highlight colon guifg=#cc9900
highlight question guifg=#cc9900
highlight exclamation guifg=#cc66ff gui=bold
highlight arrow guifg=#cc9900
highlight Dollar guifg=#cc66ff
"highlight Dollar guifg=#6600cc gui=bold
highlight LeadingComa guifg=#ff0086
highlight Coma guifg=#ff0086
"highlight ExtraSpaces guifg=#00ff00 guibg=#545454 gui=underline
highlight ExtraSpaces guifg=#00ff00 guibg=white gui=underline

let g:colors_name = "railscasts"

highlight Folded guibg=black guifg=#333333
" may not be useful..
"highlight FoldColumn guibg=darkgrey guifg=white

hi link htmlTag                     xmlTag
hi link htmlTagName                 xmlTagName
hi link htmlEndTag                  xmlEndTag

highlight Normal                    guifg=#E6E1DC guibg=#111111
highlight Cursor                    guifg=#000000 ctermfg=0 guibg=#FFFFFF ctermbg=15
highlight CursorLine                guibg=#333333 ctermbg=233
highlight CursorColumn              guibg=#333333 ctermbg=233
"highlight CursorLine                guibg=#EDE1AF ctermbg=233 cterm=NONE

highlight Comment ctermfg=LightGray
highlight Comment                   guifg=#999CAA ctermfg=180 gui=italic
"highlight Comment                   guifg=#BC9458 ctermfg=180 gui=italic
highlight Constant                  guifg=#6D9CBE ctermfg=73
highlight Define                    guifg=#CC7833 ctermfg=173
highlight Error                     guifg=#FFC66D ctermfg=221 guibg=#990000 ctermbg=88
highlight Function                  guifg=#FFC66D ctermfg=221 gui=NONE cterm=NONE
highlight Character                 guifg=#B600D6
highlight Boolean                   guifg=#850000
highlight Identifier                guifg=#745FA1 ctermfg=73 gui=NONE cterm=NONE
highlight Operator                  guibg=#D65200
"highlight Identifier                guifg=#6D9CBE ctermfg=73 gui=NONE cterm=NONE
highlight Include                   guifg=#C433CC ctermfg=173 gui=NONE cterm=NONE
"highlight Include                   guifg=#CC7833 ctermfg=173 gui=NONE cterm=NONE
highlight Statement                 guifg=#CC7833 ctermfg=173 gui=NONE cterm=NONE
highlight Exception                 guifg=#A33F00
"highlight PreCondit                 guifg=#CC7833 ctermfg=173 gui=NONE cterm=NONE
highlight Keyword                   guifg=#CC7833 ctermfg=173 cterm=NONE
highlight LineNr                    guifg=#c0c0c0 guibg=#303030 ctermfg=159 gui=NONE
highlight Number                    guifg=#CDE693 ctermfg=107
"highlight Number                    guifg=#A5C261 ctermfg=107
highlight PreProc                   guifg=#E6E1DC ctermfg=103
highlight Search                    guifg=white ctermfg=NONE guibg=#FF9009 ctermbg=235 gui=underline cterm=underline
highlight Statement                 guifg=#CC7833 ctermfg=173 gui=NONE cterm=NONE
highlight String                    guifg=#A5C261 ctermfg=107
highlight Title                     guifg=#FFFFFF ctermfg=15
highlight Type                      guifg=#DA4939 ctermfg=167 gui=NONE cterm=NONE
highlight Visual                    guibg=#5A647E ctermbg=60

highlight DiffAdd                   guifg=#E6E1DC ctermfg=7 guibg=#519F50 ctermbg=71
highlight DiffDelete                guifg=#E6E1DC ctermfg=7 guibg=#660000 ctermbg=52
highlight Special                   guifg=#DA4939 ctermfg=167

highlight pythonBuiltin             guifg=#6D9CBE ctermfg=73 gui=NONE cterm=NONE
highlight rubyBlockParameter        guifg=#00FFFF ctermfg=15
"highlight rubyBlockParameter        guifg=#FFFFFF ctermfg=15
highlight rubyClass                 guifg=#30D156 ctermfg=15 gui=bold
highlight rubyModule                guifg=#3099D1 ctermfg=15 gui=bold
highlight rubyConstant              guifg=#DA4939 ctermfg=167
highlight rubyInstanceVariable      guifg=#AC8FEB ctermfg=189
"highlight rubyInstanceVariable      guifg=#D0D0FF ctermfg=189
highlight rubyInterpolation         guifg=#519F50 ctermfg=107
highlight rubyLocalVariableOrMethod guifg=#D0D0FF ctermfg=189
highlight rubyPredefinedConstant    guifg=#DA4939 ctermfg=167
highlight rubyPseudoVariable        guifg=#FF6D6D ctermfg=221
"highlight rubyPseudoVariable        guifg=#FFC66D ctermfg=221
highlight rubyStringDelimiter       guifg=#E368E3 ctermfg=143
"highlight rubyStringDelimiter       guifg=#A5C261 ctermfg=143
"highlight rubyData                  guifg=#FF0000
highlight rubyFunction              guifg=#FFC66D ctermfg=221 gui=bold cterm=NONE
highlight rubyKeyWord               guifg=#FFC66D gui=bold
highlight rubyGlobalVariable        guifg=#22F0E2

highlight rubySymbol                guifg=#D90000 gui=bold
highlight rubySymbolDelimiter       guifg=#D90000 gui=bold

"rubyDelimEscape rubyDelimEscape
highlight rubyNestedParentheses     guifg=#ff9966
"rubyNestedCurlyBraces           rubyNestedCurlyBraces
"rubyNestedAngleBrackets         rubyNestedAngleBrackets
"rubyNestedSquareBrackets        rubyNestedSquareBrackets
"rubyRegexpParens                rubyRegexpParens
"rubyRegexpBrackets              rubyRegexpBrackets
"rubyBlockArgument               rubyBlockArgument
"rubyBlockParameterList          rubyBlockParameterList
"rubyHeredocStart                rubyHeredocStart
"rubyAliasDeclaration2           rubyAliasDeclaration2
"rubyAliasDeclaration            rubyAliasDeclaration
"rubyMethodDeclaration           rubyMethodDeclaration
"rubyClassDeclaration            rubyClassDeclaration
"rubyModuleDeclaration           rubyModuleDeclaration
"rubyMethodBlock rubyMethodBlock
"highlight rubyBlock       guifg=red
"highlight rubyDoBlock      guifg=#c8f2bf
"highlight rubyCurlyBlock  guifg=#c2a8bf
highlight rubyArrayDelimiter        guifg=#ff9966
highlight rubyArrayLiteral          guifg=#ff9966
"rubyBlockExpression             rubyBlockExpression
"rubyCaseExpression              rubyCaseExpression
"rubyConditionalExpression       rubyConditionalExpression
"rubyOptionalDoLine              rubyOptionalDoLine
"highlight rubyRepeatExpression            guifg=red
"rubyMultilineComment            rubyMultilineComment
highlight rubyKeywordAsMethod       guifg=red
"highlight   vimRubyRegion guibg=white




highlight xmlTag                    guifg=#E8BF6A ctermfg=179
highlight xmlTagName                guifg=#E8BF6A ctermfg=179
highlight xmlEndTag                 guifg=#E8BF6A ctermfg=179

highlight mailSubject               guifg=#A5C261 ctermfg=107
highlight mailHeaderKey             guifg=#FFC66D ctermfg=221
highlight mailEmail                 guifg=#A5C261 ctermfg=107 gui=italic cterm=underline

highlight SpellBad                  guifg=#D70000 ctermfg=160 ctermbg=NONE cterm=underline
highlight SpellRare                 guifg=#D75F87 ctermfg=168 guibg=NONE ctermbg=NONE gui=underline cterm=underline
highlight SpellCap                  guifg=#D0D0FF ctermfg=189 guibg=NONE ctermbg=NONE gui=underline cterm=underline
highlight MatchParen                guifg=#FFFFFF ctermfg=15 guibg=#005f5f ctermbg=23

highlight rubyTodo                  guifg=#FA00FA

" JavaScript Highlighting
hi javaScript                   guifg=#ffffff
hi javaScriptRegexpString       guifg=#aa6600
hi javaScriptDocComment         guifg=#aaaaaa
hi javaScriptCssStyles          guifg=#dd7700
hi javaScriptDomElemFuncs       guifg=#66cd66
hi javaScriptHtmlElemFuncs      guifg=#dd7700
hi javaScriptLabel              guifg=#00bdec   gui=italic
hi javaScriptPrototype          guifg=#00bdec
hi javaScriptConditional        guifg=#ff0007   gui=bold
hi javaScriptRepeat             guifg=#ff0007   gui=bold
hi javaScriptFunction           guifg=#ff0086   gui=bold
