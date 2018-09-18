""ucterm attributes !
  "" bold
  "" underline
  "" undercurl not always available
  "" reverse "" inverse   same as reverse
  "" italic
  "" standout
  "" NONE    no attributes used (used to reset it)

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

syntax match  javaScriptSpecial     "\\\d\d\d\|\\x\x\{2\}\|\\u\x\{4\}\|\\."
syntax region javascriptComment     start="/\*"  end="\*/" contains=javaScriptCommentTodo,javaScriptCvsTag,@Spell fold
syntax region javascriptLineComment start=+\/\/+ end=+$+ keepend contains=javaScriptCommentTodo,@Spell
syntax region javascriptStringD     start=+"+  skip=+\\\\\|\\$"+  end=+"+  contains=javaScriptSpecial,@htmlPreproc
syntax region javascriptStringS     start=+'+  skip=+\\\\\|\\$'+  end=+'+  contains=javaScriptSpecial,@htmlPreproc
syntax keyword JavascriptCommentTodo TODO FIXME XXX HACK DEPRECATED ry
syntax keyword JavascriptOperator delete new in instanceof typeof
syntax keyword JavascriptSource import export
syntax keyword JavascriptType var let const void arguments
syntax keyword JavascriptBoolean true false
syntax keyword JavascriptNull null undefined

"" Statement Keywords
syntax keyword javaScriptConditional    if else
syntax keyword javaScriptRepeat         do while for map each app db req res config console angular grunt resource com options socket export import class extends React props state propTypes defaultProps
syntax keyword javaScriptBranch         this break continue switch case default return when otherwise window document package module require events setTimeout setInterval define require
syntax keyword javaScriptTest           beforeEach before afterEach after
syntax keyword javaScriptExpectation    expect to should it describe subject 
syntax keyword javaScriptDomEvent       click dblClick hover mousenter mouseleave focus blur
syntax keyword javaScriptDomName        el div span ul ol li label
syntax keyword javaScriptStatement      try catch throw with finally
"" no color yet
syntax keyword javaScriptReact          constructor render componentDidMount componentWillMount componentWillReceiveProps 
syntax keyword javaScriptGlobalObjects  Array Boolean Date function prototype Function Infinity Math Number NaN Object Packages RegExp String Undefined JSON self exports 
syntax keyword javaScriptExceptions     Error EvalError RangeError ReferenceError SyntaxError TypeError URIError

"" angular and custom keywords
syntax keyword JavascriptAngularKeyword restrict transclude link templateUrl provider service factory controller directive value run inject injector scope
syntax keyword JavascriptAngularKeywordImportant rootScope
syntax keyword JavascriptProject pup
syntax keyword JavascriptPromise then defer deferred 
syntax keyword JavascriptDeferred resolve reject promise
"" vim syntax positive lookahead magic

hi link javascriptCommentTodo Todo
hi link javascriptDocComment Comment
hi link javascriptStringD String
hi link javascriptStringS String


"" JavaScript Highlighting
hi javaScript              guifg=#ffffff
"" JavascriptType was 164
hi JavascriptType          ctermfg=13 cterm=bold guifg=#aa66ff
hi javaScriptRegexpString  guifg=#aa6600 ctermfg=94
hi javaScriptConditional   guifg=#ff0007 gui=bold ctermfg=160
hi javaScriptRepeat        guifg=#ff0007 gui=bold ctermfg=117
hi javaScriptAngularKeyword guifg=#ff0007 gui=bold ctermfg=117
hi javaScriptAngularKeywordImportant gui=bold ctermfg=116
hi javaScriptAngularProject guifg=#ff0007 gui=bold ctermfg=117
hi javaScriptGlobalObjects guifg=#ff0086 ctermfg=13
hi JavascriptOperator      guifg=#ff0086 ctermfg=13
hi javaScriptComment       ctermfg=243 guifg=#aaaaaa
hi javaScriptLineComment   ctermfg=243 guifg=#aaaaaa
hi javaScriptDocComment    guifg=#aaaaaa ctermfg=243
hi JavascriptPromise       ctermfg=172
hi JavascriptDeferred      ctermfg=185
hi JavascriptBranch        ctermfg=166
hi JavascriptTest          ctermfg=166
hi JavascriptExpectation   ctermfg=148
hi JavascriptDomEvent      ctermfg=115

"" ry custom highlighting
syn match semicolon ';'
syn match Math '[+\-%=]'
syn match colon '[:><]\|\(=>\)'
syn match colonOnly '^\s\+;$'
syn match question '?'
syn match exclamation '!'
syn match double_exclamation '!!'
syn match Parentheses display '[()]'
syn match EmptyParentheses display '(\s*)'
syn match Moustaches display '[{}]'
syn match EmptyMoustaches display '{\s*}'
syn match SqBrackets display '[\[\]]'
syn match EmptySqBrackets display '\[\s*\]'
syn match Dollar display '\$'
syn match LeadingComa display '^\s*,'
syn match Coma display '[,\.]'
syn match Dot display '\.'
syn match ExtraSpaces display '\s\+$'
syn match JRepeat display '\(map\|forEach\|each\|invoke\)'
""syn match JNamespace display '[A-Z][A-Za-z]\+'
syn match JPrivate display '_\w\+'
syn match JsObjectKey display '\w\+\(:\)\@='

"" Experimenting ;)
"" syn match FunctionCall display '\.[a-zA-Z0-9]+\([^\)]+\)'
"" highlight FunctionCall ctermfg=160

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
highlight arrow guifg=#cc9900
highlight Dollar ctermfg=164 guifg=#cc66ff cterm=bold
""highlight Dollar guifg=#6600cc gui=bold
highlight LeadingComa ctermfg=164 cterm=bold guifg=#ff0086
highlight Coma ctermfg=164 guifg=#ff0086
""highlight ExtraSpaces guifg=#00ff00 guibg=#545454 gui=underline
highlight ExtraSpaces guifg=#00ff00 guibg=white gui=underline
highlight JRepeat ctermfg=117
""highlight JNamespace ctermfg=120
highlight JPrivate ctermfg=120
hi JsObjectKey ctermfg=198

let g:colors_name = "ry"

highlight Folded guibg=black guifg=#333333
"" may not be useful..
""highlight FoldColumn guibg=darkgrey guifg=white

hi link htmlTag                     xmlTag
hi link htmlTagName                 xmlTagName
hi link htmlEndTag                  xmlEndTag

highlight Normal                    guifg=#E6E1DC guibg=#111111
highlight Cursor                    guifg=#000000 ctermfg=0 guibg=#FFFFFF ctermbg=15
highlight CursorLine                guibg=#333333 ctermbg=237  cterm=none
highlight CursorColumn              guibg=#333333 ctermbg=237
"highlight CursorLine                guibg=#EDE1AF ctermbg=233 cterm=NONE

highlight Comment                   guifg=#999CAA ctermfg=180 gui=italic ctermfg=LightGray
"highlight Comment                   guifg=#BC9458 ctermfg=180 gui=italic
highlight Constant                  guifg=#6D9CBE ctermfg=73
highlight Define                    guifg=#CC7833 ctermfg=173
highlight Error                     guifg=#FFC66D ctermfg=221 guibg=#990000 ctermbg=88
"139
highlight Function                  guifg=#FFC66D ctermfg=221 gui=NONE cterm=NONE
highlight Character                 guifg=#B600D6
highlight Boolean                   ctermfg=202
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
highlight Search                    guifg=white ctermfg=000 guibg=#FF9009 ctermbg=255 gui=underline cterm=underline
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
