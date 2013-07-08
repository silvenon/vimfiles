" Vim color file
" Converted from Textmate theme Twilight using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "vwilight"

highlight Cursor                       ctermfg=NONE ctermbg=248  cterm=NONE         guifg=NONE    guibg=#a7a7a7 gui=NONE
highlight Visual                       ctermfg=NONE ctermbg=59   cterm=NONE         guifg=NONE    guibg=#3c4043 gui=NONE
highlight CursorLine                   ctermfg=NONE ctermbg=235  cterm=NONE         guifg=NONE    guibg=#2b2b2b gui=NONE
highlight CursorColumn                 ctermfg=NONE ctermbg=235  cterm=NONE         guifg=NONE    guibg=#2b2b2b gui=NONE
highlight ColorColumn                  ctermfg=NONE ctermbg=235  cterm=NONE         guifg=NONE    guibg=#2b2b2b gui=NONE
highlight LineNr                       ctermfg=245  ctermbg=235  cterm=NONE         guifg=#868686 guibg=#2b2b2b gui=NONE
highlight VertSplit                    ctermfg=240  ctermbg=240  cterm=NONE         guifg=#565656 guibg=#565656 gui=NONE
highlight MatchParen                   ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
highlight StatusLine                   ctermfg=231  ctermbg=240  cterm=bold         guifg=#f8f8f8 guibg=#565656 gui=bold
highlight StatusLineNC                 ctermfg=231  ctermbg=240  cterm=NONE         guifg=#f8f8f8 guibg=#565656 gui=NONE
highlight Pmenu                        ctermfg=95   ctermbg=NONE cterm=NONE         guifg=#9b703f guibg=NONE    gui=NONE
highlight PmenuSel                     ctermfg=NONE ctermbg=59   cterm=NONE         guifg=NONE    guibg=#3c4043 gui=NONE
highlight IncSearch                    ctermfg=NONE ctermbg=59   cterm=NONE         guifg=NONE    guibg=#343a44 gui=NONE
highlight Search                       ctermfg=NONE ctermbg=59   cterm=NONE         guifg=NONE    guibg=#343a44 gui=NONE
highlight Directory                    ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
highlight Folded                       ctermfg=59   ctermbg=233  cterm=NONE         guifg=#5f5a60 guibg=#141414 gui=NONE

highlight Normal                       ctermfg=231  ctermbg=233  cterm=NONE         guifg=#f8f8f8 guibg=#141414 gui=NONE
highlight Boolean                      ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
highlight Character                    ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
highlight Comment                      ctermfg=59   ctermbg=NONE cterm=NONE         guifg=#5f5a60 guibg=NONE    gui=italic
highlight Conditional                  ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
highlight Constant                     ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
highlight Define                       ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
highlight ErrorMsg                     ctermfg=NONE ctermbg=NONE cterm=NONE         guifg=NONE    guibg=NONE    gui=NONE
highlight WarningMsg                   ctermfg=NONE ctermbg=NONE cterm=NONE         guifg=NONE    guibg=NONE    gui=NONE
highlight Float                        ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
highlight Function                     ctermfg=95   ctermbg=NONE cterm=NONE         guifg=#9b703f guibg=NONE    gui=NONE
highlight Identifier                   ctermfg=228  ctermbg=NONE cterm=NONE         guifg=#f9ee98 guibg=NONE    gui=NONE
highlight Keyword                      ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
highlight Label                        ctermfg=107  ctermbg=NONE cterm=NONE         guifg=#8f9d6a guibg=NONE    gui=NONE
highlight NonText                      ctermfg=239  ctermbg=234  cterm=NONE         guifg=#4f4f4f guibg=#1f1f1f gui=NONE
highlight Number                       ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
highlight Operator                     ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
highlight PreProc                      ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
highlight Special                      ctermfg=231  ctermbg=NONE cterm=NONE         guifg=#f8f8f8 guibg=NONE    gui=NONE
highlight SpecialKey                   ctermfg=239  ctermbg=235  cterm=NONE         guifg=#4f4f4f guibg=#2b2b2b gui=NONE
highlight Statement                    ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
highlight StorageClass                 ctermfg=228  ctermbg=NONE cterm=NONE         guifg=#f9ee98 guibg=NONE    gui=NONE
highlight String                       ctermfg=107  ctermbg=NONE cterm=NONE         guifg=#8f9d6a guibg=NONE    gui=NONE
highlight Tag                          ctermfg=95   ctermbg=NONE cterm=NONE         guifg=#9b703f guibg=NONE    gui=NONE
highlight Title                        ctermfg=231  ctermbg=NONE cterm=bold         guifg=#f8f8f8 guibg=NONE    gui=bold
highlight Todo                         ctermfg=59   ctermbg=NONE cterm=inverse,bold guifg=#5f5a60 guibg=NONE    gui=inverse,bold,italic
highlight Type                         ctermfg=95   ctermbg=NONE cterm=NONE         guifg=#9b703f guibg=NONE    gui=NONE
highlight Underlined                   ctermfg=NONE ctermbg=NONE cterm=underline    guifg=NONE    guibg=NONE    gui=underline
highlight rubyClass                    ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
highlight rubyFunction                 ctermfg=95   ctermbg=NONE cterm=NONE         guifg=#9b703f guibg=NONE    gui=NONE
highlight rubyInterpolationDelimiter   ctermfg=NONE ctermbg=NONE cterm=NONE         guifg=NONE    guibg=NONE    gui=NONE
highlight rubySymbol                   ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
highlight rubyConstant                 ctermfg=104  ctermbg=NONE cterm=NONE         guifg=#9b859d guibg=NONE    gui=NONE
highlight rubyStringDelimiter          ctermfg=107  ctermbg=NONE cterm=NONE         guifg=#8f9d6a guibg=NONE    gui=NONE
highlight rubyBlockParameter           ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE
highlight rubyInstanceVariable         ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE
highlight rubyInclude                  ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
highlight rubyGlobalVariable           ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE
highlight rubyRegexp                   ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#e9c062 guibg=NONE    gui=NONE
highlight rubyRegexpDelimiter          ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#e9c062 guibg=NONE    gui=NONE
highlight rubyEscape                   ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
highlight rubyControl                  ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
highlight rubyClassVariable            ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE
highlight rubyOperator                 ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
highlight rubyException                ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
highlight rubyPseudoVariable           ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE
highlight rubyRailsUserClass           ctermfg=104  ctermbg=NONE cterm=NONE         guifg=#9b859d guibg=NONE    gui=NONE
highlight rubyRailsARAssociationMethod ctermfg=186  ctermbg=NONE cterm=NONE         guifg=#dad085 guibg=NONE    gui=NONE
highlight rubyRailsARMethod            ctermfg=186  ctermbg=NONE cterm=NONE         guifg=#dad085 guibg=NONE    gui=NONE
highlight rubyRailsRenderMethod        ctermfg=186  ctermbg=NONE cterm=NONE         guifg=#dad085 guibg=NONE    gui=NONE
highlight rubyRailsMethod              ctermfg=186  ctermbg=NONE cterm=NONE         guifg=#dad085 guibg=NONE    gui=NONE
highlight erubyDelimiter               ctermfg=NONE ctermbg=NONE cterm=NONE         guifg=NONE    guibg=NONE    gui=NONE
highlight erubyComment                 ctermfg=59   ctermbg=NONE cterm=NONE         guifg=#5f5a60 guibg=NONE    gui=italic
highlight erubyRailsMethod             ctermfg=186  ctermbg=NONE cterm=NONE         guifg=#dad085 guibg=NONE    gui=NONE
highlight htmlTag                      ctermfg=137  ctermbg=NONE cterm=NONE         guifg=#ac885b guibg=NONE    gui=NONE
highlight htmlEndTag                   ctermfg=137  ctermbg=NONE cterm=NONE         guifg=#ac885b guibg=NONE    gui=NONE
highlight htmlTagName                  ctermfg=137  ctermbg=NONE cterm=NONE         guifg=#ac885b guibg=NONE    gui=NONE
highlight htmlArg                      ctermfg=137  ctermbg=NONE cterm=NONE         guifg=#ac885b guibg=NONE    gui=NONE
highlight htmlSpecialChar              ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
highlight javaScriptFunction           ctermfg=228  ctermbg=NONE cterm=NONE         guifg=#f9ee98 guibg=NONE    gui=NONE
highlight javaScriptRailsFunction      ctermfg=186  ctermbg=NONE cterm=NONE         guifg=#dad085 guibg=NONE    gui=NONE
highlight javaScriptBraces             ctermfg=NONE ctermbg=NONE cterm=NONE         guifg=NONE    guibg=NONE    gui=NONE
highlight yamlKey                      ctermfg=95   ctermbg=NONE cterm=NONE         guifg=#9b703f guibg=NONE    gui=NONE
highlight yamlAnchor                   ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE
highlight yamlAlias                    ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE
highlight yamlDocumentHeader           ctermfg=107  ctermbg=NONE cterm=NONE         guifg=#8f9d6a guibg=NONE    gui=NONE
highlight cssURL                       ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE
highlight cssFunctionName              ctermfg=186  ctermbg=NONE cterm=NONE         guifg=#dad085 guibg=NONE    gui=NONE
highlight cssColor                     ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
highlight cssPseudoClassId             ctermfg=95   ctermbg=NONE cterm=NONE         guifg=#9b703f guibg=NONE    gui=NONE
highlight cssClassName                 ctermfg=95   ctermbg=NONE cterm=NONE         guifg=#9b703f guibg=NONE    gui=NONE
highlight cssValueLength               ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
highlight cssCommonAttr                ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
highlight cssBraces                    ctermfg=NONE ctermbg=NONE cterm=NONE         guifg=NONE    guibg=NONE    gui=NONE
