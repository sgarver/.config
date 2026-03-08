set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "monocromenotebookdark"

" Normal group at first
highlight Normal ctermfg=White ctermbg=Black guifg=grey90 guibg=grey10

" default groups
highlight ColorColumn term=NONE cterm=NONE ctermfg=White ctermbg=DarkGrey gui=NONE guifg=grey90 guibg=grey25
highlight Conceal ctermfg=DarkGrey ctermbg=Black guifg=grey25 guibg=grey10
highlight Cursor term=reverse cterm=reverse ctermfg=White ctermbg=Black gui=reverse guifg=grey90 guibg=grey10
highlight CursorColumn term=NONE cterm=NONE ctermfg=White ctermbg=DarkGrey gui=NONE guifg=grey90 guibg=grey25
highlight CursorIM term=reverse cterm=reverse ctermfg=Black ctermbg=White gui=reverse guifg=grey10 guibg=grey90
highlight CursorLine term=NONE cterm=NONE ctermfg=White ctermbg=DarkGrey gui=NONE guifg=grey90 guibg=grey25
highlight CursorLineNr term=bold cterm=bold ctermfg=LightGrey ctermbg=Black gui=bold guifg=grey60 guibg=grey10
highlight DiffAdd ctermfg=White ctermbg=DarkGrey guifg=grey90 guibg=grey25
highlight DiffChange ctermfg=DarkGrey ctermbg=LightGrey guifg=grey25 guibg=grey60
highlight DiffDelete ctermfg=DarkGrey ctermbg=DarkGrey guifg=grey25 guibg=grey25
highlight DiffText ctermfg=White ctermbg=LightGrey guifg=grey90 guibg=grey60
highlight Directory ctermfg=LightGrey ctermbg=Black guifg=grey70 guibg=grey10
highlight ErrorMsg ctermfg=LightGrey ctermbg=White guifg=grey60 guibg=grey80
highlight FoldColumn ctermfg=White ctermbg=Black guifg=grey90 guibg=grey10
highlight Folded ctermfg=DarkGrey ctermbg=Black guifg=grey25 guibg=grey10
highlight LineNr ctermfg=LightGrey ctermbg=Black guifg=grey60 guibg=grey10
highlight MatchParen ctermfg=White ctermbg=LightGrey guifg=grey90 guibg=grey60
highlight ModeMsg ctermfg=LightGrey ctermbg=Black guifg=grey70 guibg=grey10
highlight MoreMsg ctermfg=LightGrey ctermbg=Black guifg=grey70 guibg=grey10
highlight NonText term=bold cterm=bold ctermfg=DarkGrey ctermbg=LightGrey gui=bold guifg=grey25 guibg=grey60
highlight Pmenu ctermfg=White ctermbg=LightGrey guifg=grey90 guibg=grey60
highlight PmenuSbar ctermbg=DarkGrey guibg=grey40
highlight PmenuSel ctermfg=DarkGrey ctermbg=LightGrey guifg=grey25 guibg=grey60
highlight PmenuThumb ctermbg=DarkGrey guibg=grey25
highlight Question ctermfg=DarkGrey ctermbg=Black guifg=grey25 guibg=grey10
highlight Search ctermfg=DarkGrey ctermbg=LightGrey guifg=grey25 guibg=grey60
highlight SignColumn ctermfg=White ctermbg=Black guifg=grey90 guibg=grey10
highlight SpecialKey ctermfg=DarkGrey ctermbg=Black guifg=grey25 guibg=grey10
highlight SpellBad term=undercurl cterm=undercurl ctermfg=White gui=undercurl guifg=grey90 guisp=grey25
highlight SpellCap term=undercurl cterm=undercurl ctermfg=White gui=undercurl guifg=grey90 guisp=grey90
highlight SpellLocal term=undercurl cterm=undercurl ctermfg=DarkGrey gui=undercurl guifg=grey25 guisp=grey90
highlight SpellRare term=undercurl cterm=undercurl ctermfg=DarkGrey gui=undercurl guifg=grey25 guisp=grey25
highlight StatusLine term=bold cterm=bold ctermfg=LightGrey ctermbg=DarkGrey gui=bold guifg=grey60 guibg=grey25
highlight StatusLineNC term=NONE cterm=NONE ctermfg=White ctermbg=DarkGrey gui=NONE guifg=grey90 guibg=grey25
highlight StatusLineTerm term=bold cterm=bold ctermfg=LightGrey ctermbg=DarkGrey gui=bold guifg=grey60 guibg=grey40
highlight StatusLineTermNC term=NONE cterm=NONE ctermfg=White ctermbg=DarkGrey gui=NONE guifg=grey90 guibg=grey40
highlight TabLine ctermfg=LightGrey ctermbg=White guifg=grey60 guibg=grey80
highlight TabLineFill ctermbg=White guibg=grey80
highlight TabLineSel term=bold cterm=bold ctermfg=White ctermbg=LightGrey gui=bold guifg=grey90 guibg=grey60
highlight Terminal ctermfg=Black ctermbg=White guifg=grey10 guibg=grey90
highlight Title term=bold cterm=bold ctermfg=DarkGrey ctermbg=Black gui=bold guifg=grey25 guibg=grey10
highlight VertSplit term=NONE cterm=NONE ctermfg=DarkGrey ctermbg=DarkGrey gui=NONE guifg=grey25 guibg=grey25
highlight Visual term=reverse cterm=reverse guibg=grey25
highlight VisualNOS term=bold,underline cterm=bold,underline gui=bold,underline guibg=grey25
highlight WarningMsg term=bold cterm=bold ctermfg=LightGrey ctermbg=DarkGrey gui=bold guifg=grey60 guibg=grey25
highlight WildMenu term=reverse cterm=reverse ctermfg=Black ctermbg=White gui=reverse guifg=grey10 guibg=grey90
highlight lCursor term=reverse cterm=reverse ctermfg=Black ctermbg=White gui=reverse guifg=grey10 guibg=grey90

" custom groups
highlight Comment ctermfg=DarkGrey ctermbg=Black guifg=grey25 guibg=grey10
highlight Statement term=bold cterm=bold ctermfg=White ctermbg=Black gui=bold guifg=grey90 guibg=grey10
highlight Type ctermfg=LightGrey ctermbg=Black guifg=grey70 guibg=grey10
highlight PreProc ctermfg=LightGrey ctermbg=Black guifg=grey70 guibg=grey10
highlight Identifier ctermfg=LightGrey ctermbg=Black guifg=grey70 guibg=grey10
highlight Special ctermfg=White ctermbg=DarkGrey guifg=grey80 guibg=grey25
highlight Constant ctermfg=LightGrey ctermbg=DarkGrey guifg=grey70 guibg=grey25
highlight Error ctermfg=LightGrey ctermbg=Black guifg=grey60 guibg=grey10
highlight Underlined term=underline cterm=underline ctermfg=White ctermbg=Black gui=underline guifg=grey90 guibg=grey10
highlight Todo ctermfg=Black ctermbg=DarkGrey guifg=grey10 guibg=grey25

" links
highlight link IncSearch Cursor

" WARNING: undefined default groups:
"  - EndOfBuffer
"  - LineNrAbove
"  - LineNrBelow
"  - QuickFixLine
