"=============================================
"    Name: rst.vim
"    File: after/syntax/rst.vim
"  Author: Rykka G.F
" Summary: syntax file with options.
"  Update: 2018-01-21
"=============================================

if exists("b:af_rst_loaded")
    finish
endif

let b:af_rst_loaded = 1

let s:cpo_save = &cpo
set cpo-=C

syn sync match rstHighlight groupthere NONE #^\_s\@!#

" Link "{{{1
fun! s:def_inline_char(name, start, end, char_left, char_right) "{{{
    exe 'syn match rst'.a:name
                \ '+'.a:char_left.'\zs'.a:start.'\ze[^[:space:]'
                \.a:char_right.a:start[strlen(a:start)-1].'][^'
                \.a:start[strlen(a:start)-1]
                \.'\\]*'.a:end.'\ze\%($\|\s\|[''")\]}>/:.,;!?\\-]\)+'
endfun "}}}

for s:_pair in ['""', "''", '()', '{}', '<>']
    call s:def_inline_char('PhaseHyperLinkReference', '`', '`__\=', s:_pair[0] ,s:_pair[1],)
endfor
call s:def_inline_char('PhaseHyperLinkReference', '`', '`__\=', '\[','\]')
call s:def_inline_char('PhaseHyperLinkReference', '`', '`__\=', '\%(^\|\s\|[/:]\)','')
" List: "{{{1
syn match rstDefinitionList `\v^(\s*)\h[^:]*\ze%(\s:\s.*)*\n\1\s+\S`
syn match rstBulletList `\v^\s*[-*+]\ze\s+`
syn match rstEnumeratedList `\v\c^\s*%(\d+|[#a-z]|[imlcxvd]+)[.)]\ze\s+`
syn match rstEnumeratedList `\v\c^\s*\(%(\d+|[#a-z]|[imlcxvd]+)\)\ze\s+`
syn match rstOptionList `\v^\s*%(-\w%( \w+)=|--[[:alnum:]_-]+%(\=\w+)=|/\u)%(, %(-\w%( \w+)=|--[[:alnum:]_.-]+%(\=\w+)=|/\u))*%(  |\t)\ze\s*\S`
syn match rstFieldList `\v^\s*:[^:[:space:]][^:]+:\_s`
syn match rstRoles `\v\s:\zs\w+\ze:\``
syn match rstBibliographicField `\v^\s*:(Author|Authors|Organization|Contact|Address|Version|Status|Date|Copyright|Dedication|Abstract):\_s`

syn match rstBlockQuoteAttr  `\v%(\_^\s*\n)@<=\s+---=\s.*`

syn match   rstCommentTitle '\v(^\s+|(^\.\.\s+)@<=):=\u\w*(\s+\u\w*)*:' contained
syn cluster rstCommentGroup contains=rstCommentTitle,rstTodo


" File: "{{{1
syn cluster rstCruft add=rstStandaloneHyperlink
syn cluster rstCommentGroup add=@rstLinkGroup

" Code: "{{{1

" Add block indicator for code directive
syn match rstCodeBlockIndicator `^\_.` contained

" FIXME To Fix #61 ( Not Working!!!)
" For no code file contained , we still highlight in code group.
exe 'syn region rstDirective_code matchgroup=rstDirective fold '
            \.'start=#\%(sourcecode\|code\%(-block\)\=\)::\s\+\S\+\s*$# '
            \.'skip=#^$# '
            \.'end=#^\s\@!# contains=@NoSpell,rstCodeBlockIndicator,@rst_code'
exe 'syn cluster rstDirectives add=rstDirective_code'
" TODO Can we use dynamical loading?
" parse the code name of code directives dynamicly and load the syntax file?

if exists("b:af_py_loaded")
    finish
endif
let b:current_syntax = "rst"

if !exists("g:_rst_including_python_rst") && has("spell")
    " Enable spelling on the whole file if we're not being included to parse
    " docstrings
    syn spell toplevel
endif

" Todo: "{{{1
syn cluster rstTodoGroup contains=rstTodoItem,rstTodoPrior,rstTodoTmBgn,rstTodoTmsEnd

" Highlights: "{{{1
if &background == 'light'
    hi def rstFileLink    guifg=#437727  gui=underline ctermfg=28 cterm=underline
else
    hi def rstFileLink    guifg=#58A261  gui=underline ctermfg=77 cterm=underline
endif
hi link rstFileExtLink rstFileLink
hi link rstFileExtLinkConceal rstFileLink

if exists("g:rst_code_indicator") && g:rst_code_indicator == 1
    hi def link rstCodeBlockIndicator DiffAdd
endif

hi def link rstTodoItem     Include
hi def link rstTodoPrior    Include
hi def link rstTodoTmBgn    Number
hi def link rstTodoTmEnd    Number
hi def link rstDoneRegion   Comment

hi link rstStandaloneHyperlink          Underlined
hi link rstFootnoteReference            Underlined
hi link rstCitationReference            Underlined
hi link rstHyperLinkReference           Underlined
hi link rstInlineInternalTargets        Keyword
hi link rstPhaseHyperLinkReference      Underlined

hi def link rstBulletList                   Function
hi def link rstEnumeratedList               Function
hi def link rstDefinitionList               Statement
hi def link rstFieldList                    Function
hi def link rstBibliographicField           Constant
hi def link rstOptionList                   Statement
hi def link rstRoles                        Operator

hi def link rstBlockQuoteAttr               Exception
hi def link rstCommentTitle                 SpecialComment


if exists("s:cpo_save")
    let &cpo = s:cpo_save
    unlet s:cpo_save
endif
