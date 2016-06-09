""ucterm attributes !
  "" bold
  "" underline
  "" undercurl not always available
  "" reverse
	"" inverse   same as reverse
  "" italic
  "" standout
  "" NONE    no attributes used (used to reset it)

""set background=dark
""hi clear
""if exists("syntax_on")
""  syntax reset
""endif

""syntax match  javaScriptSpecial     "\\\d\d\d\|\\x\x\{2\}\|\\u\x\{4\}\|\\."
""syntax match  javaScriptNumber      "/\<-\=\d\+L\=\>\|\<0[xX]\x\+\>/"
""syntax match  javaScriptFloat       "/\<-\=\%(\d\+\.\d\+\|\d\+\.\|\.\d\+\)\%([eE][+-]\=\d\+\)\=\>/"
""syntax match  javaScriptLabel       "/\(?\s*\)\@<!\<\w\+\(\s*:\)\@="
""syntax region javascriptComment     start="/\*"  end="\*/" contains=javaScriptCommentTodo,javaScriptCvsTag,@Spell fold
""syntax region javascriptLineComment start=+\/\/+ end=+$+ keepend contains=javaScriptCommentTodo,@Spell
""syntax region javascriptStringD     start=+"+  skip=+\\\\\|\\$"+  end=+"+  contains=javaScriptSpecial,@htmlPreproc
""syntax region javascriptStringS     start=+'+  skip=+\\\\\|\\$'+  end=+'+  contains=javaScriptSpecial,@htmlPreproc
syntax keyword JavascriptCommentTodo TODO FIXME XXX HACK DEPRECATED WIP ry xdescribe xit
syntax keyword JavascriptOperator delete new in instanceof typeof
syntax keyword JavascriptSource import export
syntax keyword JavascriptType var const void arguments
syntax keyword JavascriptBoolean true false
syntax keyword JavascriptNull null undefined

"" Statement Keywords
syntax keyword javaScriptConditional     if else
syntax keyword javaScriptRepeat          do while for map each app db req res angular sails grunt resource com options socket config console io s3 sns sinon restore expected
syntax keyword javaScriptBranch          break continue switch case default return when otherwise window document package module require event events setTimeout setInterval define require process global contexts ctx
syntax keyword javaScriptThis            this self _this constructor
syntax keyword javaScriptTest            beforeEach before afterEach after
syntax keyword javaScriptExpectation     expect to should
syntax keyword javaScriptExpectationItalic it describe
syntax keyword javaScriptExpectationBold subject lambda handler 
syntax keyword javaScriptDomEvent        click dblClick hover mousenter mouseleave focus blur
syntax keyword javaScriptDomName         el div span ul ol li label
syntax keyword javaScriptStatement       try catch throw with finally
syntax keyword javaScriptGlobalObjects   Array Boolean Date prototype Infinity Math Number NaN Object Packages RegExp String Undefined JSON exports 
syntax keyword javaScriptGlobalObjectsFunction function Function
syntax keyword javaScriptExceptions      Error EvalError RangeError ReferenceError SyntaxError TypeError URIError

"" angular and custom keywords
syntax keyword JavascriptAngularKeyword restrict transclude link templateUrl provider service factory controller directive value run inject injector scope
syntax keyword JavascriptAngularKeywordImportant rootScope
syntax keyword JavascriptProject pup
syntax keyword JavascriptPromise then defer deferred spread tap bind call apply catch
syntax keyword JavascriptDeferred resolve reject promise Promise

hi link javascriptCommentTodo Todo
hi link javascriptDocComment Comment
hi link javascriptStringD String
hi link javascriptStringS String

"" ry custom highlighting
"""syntax match semicolon ';'
syntax match Math '[+\-%=]'
syntax match colon ':'
"""syntax match colonOnly '^\s\+;$'
"""syntax match question '?'
"""syntax match exclamation '!'
"""syntax match double_exclamation '!!'
"""syntax match double_arrow '=>'
"""syntax match Parentheses '[()]' display
"""syntax match EmptyParentheses '(\s*)' display
"""syntax match Moustaches '[{}]' display
"""syntax match EmptyMoustaches '{\s*}' display
"""syntax match SqBrackets '[\[\]]' display
"""syntax match EmptySqBrackets '\[\s*\]' display
"""syntax match Dollar '\$' display
"""syntax match LeadingComa '^\s*,' display
"""syntax match Coma '[,\.]' display
"""syntax match Dot '\.' display
"""syntax match ExtraSpaces '\s\+$' display
"""syntax match JRepeat '\(map\|forEach\|each\|invoke\)' display
"""syntax match JNamespace '[A-Z][A-Za-z]\+' display
"""syntax match JPrivate '_\w\+' display
"""syntax match JsObjectKey '\w\+\(:\)\@=' display

"" JavaScript Highlighting
hi javaScript                        guifg=#ffffff
hi JavascriptType                    ctermfg=13 cterm=bold guifg=#aa66ff
hi javaScriptRegexpString            guifg=#aa6600 ctermfg=94
hi javaScriptConditional             guifg=#ff0007 gui=bold ctermfg=160
hi javaScriptRepeat                  guifg=#ff0007 gui=bold ctermfg=117
hi javaScriptAngularKeyword          guifg=#ff0007 gui=bold ctermfg=117
hi javaScriptAngularKeywordImportant gui=bold cterm=bold ctermfg=116
hi javaScriptGlobalObjects           guifg=#ff0086 ctermfg=13
hi javaScriptGlobalObjectsFunction   guifg=#ff0086 ctermfg=197
hi JavascriptOperator                guifg=#ff0086 ctermfg=13
hi javaScriptComment                 ctermfg=243 guifg=#aaaaaa
hi javaScriptLineComment             ctermfg=243 guifg=#aaaaaa
hi javaScriptDocComment              guifg=#aaaaaa ctermfg=243
hi JavascriptPromise                 ctermfg=172
hi JavascriptDeferred                ctermfg=185
hi javaScriptStatement               ctermfg=185 cterm=bold
hi JavascriptBranch                  ctermfg=166
hi JavascriptTest                    ctermfg=166
hi JavascriptExpectation             ctermfg=148
hi JavascriptExpectationItalic       ctermfg=148 cterm=italic
hi JavascriptExpectationBold         ctermfg=148 cterm=bold
hi JavascriptDomEvent                ctermfg=115
hi javascriptSpecItDesc              ctermbg=94 ctermfg=93


highlight EmptyParentheses ctermfg=221 guifg=#ff9966
highlight Parentheses ctermfg=214 guifg=#ff9966 cterm=bold gui=bold

highlight EmptyMoustaches ctermfg=221 guifg=#cc9900
highlight Moustaches ctermfg=214 guifg=#cc9900 gui=bold cterm=bold

highlight EmptySqBrackets ctermfg=221 guifg=#cccc66
highlight SqBrackets ctermfg=214 guifg=#cccc66 gui=bold cterm=bold
highlight Dot ctermfg=160  cterm=bold guifg=#ff0086
highlight semicolon ctermfg=243 guifg=#666666 gui=italic
highlight Math ctermfg=214 guifg=#cc9900
highlight colon ctermfg=214 cterm=bold guifg=#cc9900
highlight colonOnly ctermfg=164 cterm=bold guifg=#cc9900
highlight question ctermfg=214 cterm=bold guifg=#cc9900
highlight exclamation ctermfg=128 guifg=#cc66ff gui=bold cterm=bold
highlight double_exclamation ctermfg=128 guifg=#cc66ff gui=bold cterm=bold
highlight double_arrow   guifg=#ff0086 ctermfg=197 cterm=bold
highlight arrow guifg=#cc9900
highlight Dollar ctermfg=164 guifg=#cc66ff cterm=bold
""highlight Dollar guifg=#6600cc gui=bold
highlight LeadingComa ctermfg=164 cterm=bold guifg=#ff0086
highlight Coma ctermfg=164 guifg=#ff0086
""highlight ExtraSpaces guifg=#00ff00 guibg=#545454 gui=underline
highlight ExtraSpaces guifg=#00ff00 guibg=white gui=underline
highlight JRepeat ctermfg=117
highlight JNamespace ctermfg=247 cterm=bold
highlight JPrivate cterm=underline
highlight JavascriptBoolean cterm=bold ctermfg=196
highlight JavascriptNull cterm=bold ctermfg=166
hi JsObjectKey ctermfg=198
hi javaScriptThis ctermfg=198

""let g:colors_name = "ry"

highlight Folded guibg=black guifg=#333333 ctermbg=232 ctermfg=202
function! RyFoldText ()
   "get first non-blank line
   let fs = v:foldstart
   while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
   endwhile
   if fs > v:foldend
      let line = getline(v:foldstart)
   else
     let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
   endif

   let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
   let foldSize = 1 + v:foldend - v:foldstart
   let foldSizeStr = " " . foldSize . " lines "
   let foldLevelStr = repeat("+--", v:foldlevel)
   let lineCount = line("$")
   let foldPercentage = printf("[%.1f", (foldSize*1.0)/lineCount*100) . "%] "
   let expansionString = repeat(".", w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
   return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endfunction
set foldtext=RyFoldText()


"" may not be useful..

""hi link htmlTag            xmlTag
""hi link htmlTagName        xmlTagName
""hi link htmlEndTag         xmlEndTag
""
""highlight Normal           guifg=#E6E1DC guibg=#111111
""highlight Cursor           guifg=#000000 ctermfg=0 guibg=#FFFFFF ctermbg=15
""highlight CursorLine       guibg=#333333 ctermbg=237  cterm=none
""highlight CursorColumn     guibg=#333333 ctermbg=237
""
""highlight Comment          guifg=#999CAA ctermfg=180 gui=italic ctermfg=LightGray
""highlight Constant         guifg=#6D9CBE ctermfg=73
""highlight Define           guifg=#CC7833 ctermfg=173
""highlight Error            guifg=#FFC66D ctermfg=221 guibg=#990000 ctermbg=88
""highlight Function         guifg=#FFC66D ctermfg=221 gui=NONE cterm=NONE
""highlight Character        guifg=#B600D6
""highlight Boolean          cterm=bold ctermfg=196
""highlight Identifier       guifg=#745FA1 ctermfg=73 gui=NONE cterm=NONE
""highlight Operator         guibg=#D65200
""highlight Include          guifg=#C433CC ctermfg=173 gui=NONE cterm=NONE
""highlight Statement        guifg=#CC7833 ctermfg=173 gui=NONE cterm=NONE
""highlight Exception        guifg=#A33F00
""highlight Keyword          guifg=#CC7833 ctermfg=173 cterm=NONE
""highlight LineNr           guifg=#c0c0c0 guibg=#303030 ctermfg=159 gui=NONE
""highlight Number           guifg=#CDE693 ctermfg=107
""highlight PreProc          guifg=#E6E1DC ctermfg=103
""highlight Search           guifg=white ctermfg=000 guibg=#FF9009 ctermbg=255 gui=underline cterm=underline
""highlight Statement        guifg=#CC7833 ctermfg=173 gui=NONE cterm=NONE
""highlight String           guifg=#A5C261 ctermfg=107
""highlight JavascriptNumber ctermfg=196
""highlight Title            guifg=#FFFFFF ctermfg=15
""highlight Type             guifg=#DA4939 ctermfg=167 gui=NONE cterm=NONE
""highlight Visual           guibg=#5A647E ctermbg=60
""
""highlight DiffAdd          guifg=#E6E1DC ctermfg=7 guibg=#519F50 ctermbg=71
""highlight DiffDelete       guifg=#E6E1DC ctermfg=7 guibg=#660000 ctermbg=52
""highlight Special          guifg=#DA4939 ctermfg=167
""
""highlight xmlTag           guifg=#E8BF6A ctermfg=179
""highlight xmlTagName       guifg=#E8BF6A ctermfg=179
""highlight xmlEndTag        guifg=#E8BF6A ctermfg=179
""
""highlight mailSubject      guifg=#A5C261 ctermfg=107
""highlight mailHeaderKey    guifg=#FFC66D ctermfg=221
""highlight mailEmail        guifg=#A5C261 ctermfg=107 gui=italic cterm=underline
""
""highlight SpellBad         guifg=#D70000 ctermfg=160 ctermbg=NONE cterm=underline
""highlight SpellRare        guifg=#D75F87 ctermfg=168 guibg=NONE ctermbg=NONE gui=underline cterm=underline
""highlight SpellCap         guifg=#D0D0FF ctermfg=189 guibg=NONE ctermbg=NONE gui=underline cterm=underline
""highlight MatchParen       guifg=#FFFFFF ctermfg=15 guibg=#005f5f ctermbg=23
""
""highlight rubyTodo         guifg=#FA00FA
