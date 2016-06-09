"" author: r.chaumard@gmail.com
"" :help highlight-groups -- for a list of default highlight groups
"" :syntax -- reminder... open a .js file and use :syntax for a complete list of highlights available
""cterm attributes !
  "" bold
  "" underline
  "" undercurl not always available
  "" reverse
  "" inverse   same as reverse
  "" italic
  "" standout
  "" NONE    no attributes used (used to reset it)

set background=dark

hi Normal ctermfg=254 ctermbg=none
  hi NonText ctermbg=none
  hi Visual ctermfg=none ctermbg=none cterm=reverse
  hi Directory ctermfg=111
  hi MatchParen ctermbg=none cterm=reverse
  hi IncSearch cterm=reverse
  hi VertSplit ctermfg=244 ctermbg=0 cterm=reverse

hi Cursor guifg=#000000 ctermfg=0 guibg=#FFFFFF ctermbg=15
  hi CursorLine guibg=#333333 ctermbg=237  cterm=none
  hi CursorColumn guibg=#333333 ctermbg=237

hi javascriptGlobal ctermfg=13;
  hi javascriptNodeGlobal ctermfg=013
  hi javascriptIdentifier ctermfg=163
  ""hi javascriptIdentifierName cterm=bold
  hi javascriptExport ctermfg=013
  hi javascriptVariable ctermfg=013
  hi javascriptClassKeyword ctermfg=166 cterm=bold
  hi javascriptClassName ctermfg=118 cterm=bold
  hi javascriptMethodName ctermfg=118
  hi javascriptBoolean ctermfg=124 cterm=bold
  hi javascriptNull ctermfg=166
  hi javascriptReserved ctermfg=166
  hi javascriptConsoleMethod ctermfg=033
  ""hi javascriptProp ctermfg=160
  ""hi javascriptPropertyName ctermfg=160
  ""hi javascriptComputedPropertyName ctermfg=160
  ""hi javascriptMethod ctermfg=160
  hi javascriptPromiseMethod ctermfg=166
  hi javascriptPromiseStaticMethod ctermfg=166
  hi javascriptConditional ctermfg=160
  hi javascriptConditionalElse ctermfg=160
  hi javascriptCaseColon ctermfg=160
  hi javascriptReturn ctermfg=166 cterm=none
  hi javascriptExceptions ctermfg=160
  hi javascriptDefaultAssign ctermfg=160
  hi javascriptOperator ctermfg=13 cterm=bold
  ""hi javascriptPrototype ctermfg=160
hi javascriptRepeat ctermfg=117
  hi javascriptArrayMethod ctermfg=117
  hi javascriptForOperator ctermfg=13
  hi javascriptLoopParen ctermfg=160

hi javascriptString ctermfg=107
  hi javascriptStringMethod ctermfg=160

hi javascriptRegexpString ctermfg=94
  hi javascriptRegExpMethod ctermfg=117

hi javascriptNumber ctermfg=068

""hi javascriptBlock ctermfg=160
hi javascriptParens ctermfg=208
hi javascriptBrackets ctermfg=208 cterm=bold
hi javascriptBraces ctermfg=208 cterm=bold

hi javascriptObjectLiteral ctermfg=166
  hi javascriptObjectLabelColon ctermfg=214 cterm=bold
  hi javascriptObjectLabel ctermfg=198
  hi javascriptObjectStaticMethod ctermfg=117
  hi javascriptObjectMethod ctermfg=117

hi javascriptArray ctermfg=13
  hi javascriptArrayStaticMethod ctermfg=160
  ""hi jsArrayDelims ctermfg=214

hi javascriptDotNotation ctermfg=160 cterm=bold
  hi jsPunctDollar ctermfg=201 cterm=bold
  hi javascriptComma ctermfg=164 cterm=bold
  hi javascriptEndColons ctermfg=243
  hi javascriptGlobalStringDot ctermfg=160
  hi javascriptGlobalPromiseDot ctermfg=160
  hi javascriptGlobalNumberDot ctermfg=160
  hi javascriptGlobalRegExpDot ctermfg=160
  hi javascriptGlobalDateDot ctermfg=160
  hi javascriptGlobalSymbolDot ctermfg=160
  hi javascriptGlobalArrayDot ctermfg=160
  hi javascriptGlobalObjectDot ctermfg=160
  hi javascriptGlobalMethod ctermfg=160
  hi javascriptGlobalMathDot ctermfg=160
  hi javascriptGlobalJSONDot ctermfg=160
  hi javascriptGlobalURLDot ctermfg=160

  ""hi jsPunctColon ctermfg=214 cterm=bold "" for ternary operator

hi javascriptFuncKeyword ctermfg=197
  hi javascriptFuncName ctermfg=250
  ""hi javascriptSyncFunc
  ""hi javascriptAsyncFunc 
  ""hi javascriptFuncArgArray
  ""hi javascriptFuncArgObject
  ""hi javascriptFuncCallArg ctermfg=160
  hi javascriptFuncArg ctermfg=250 cterm=bold
  hi javascriptArrowFunc ctermfg=163
  hi javascriptES6SetMethod ctermfg=117
  hi javascriptES6MapMethod ctermfg=117
  hi javascriptFunctionMethod ctermfg=166 cterm=bold

hi javascriptOpSymbols ctermfg=214
hi javascriptOpSymbol ctermfg=214
  hi javascriptInvalidOp ctermfg=128 cterm=bold

hi jsReturnStatement ctermfg=082
hi jsConstant ctermfg=248

hi PreProc ctermfg=243 "" comments & documentation
  hi javascriptComment ctermfg=243
  hi javascriptLineComment ctermfg=243
  hi javascriptDocComment ctermfg=243
  hi javascriptDocNotation ctermfg=161

hi javascriptSpecDescribe ctermfg=148 cterm=italic
hi javascriptSpecIt ctermfg=148 cterm=italic
hi javascriptSpecXDescribe ctermfg=250 cterm=italic
hi javascriptSpecXIt ctermfg=250 cterm=italic
hi javascriptSpecExpect ctermfg=148 cterm=bold

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
