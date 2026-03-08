" vim:set ts=8 sts=2 sw=2 tw=0 et:
" Monochrome Note Dark - Inverted version of monochromenote

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "monocromenotebookdark"

" Normal group at first
highlight Normal guifg=#d4d4d4 guibg=#4c4c4c ctermfg=251 ctermbg=238

" default groups
highlight NonText guifg=#505050 guibg=#4c4c4c ctermfg=238 ctermbg=238 cterm=bold
highlight Terminal guifg=#3c3c3c guibg=#d4d4d4 ctermfg=235 ctermbg=251
highlight FoldColumn guifg=#505050 guibg=#4c4c4c ctermfg=238 ctermbg=238
highlight SignColumn guifg=#505050 guibg=#4c4c4c ctermfg=238 ctermbg=238

highlight LineNr guifg=#505050 guibg=#4c4c4c ctermfg=238 ctermbg=238
highlight CursorLineNr guifg=#b0b0b0 guibg=#4c4c4c ctermfg=250 ctermbg=238 cterm=bold

highlight StatusLine guifg=#3c3c3c guibg=#d4d4d4 ctermfg=235 ctermbg=251 cterm=bold
highlight StatusLineNC guifg=#505050 guibg=#4c4c4c ctermfg=238 ctermbg=238
highlight VertSplit guifg=#3c3c3c guibg=#4c4c4c ctermfg=235 ctermbg=238
highlight StatusLineTerm guifg=#3c3c3c guibg=#3c3c3c ctermfg=235 ctermbg=237 cterm=bold
highlight StatusLineTermNC guifg=#505050 guibg=#3c3c3c ctermfg=238 ctermbg=237

highlight Cursor guifg=#4c4c4c guibg=#d4d4d4 ctermfg=238 ctermbg=251 cterm=reverse
highlight CursorColumn guifg=#d4d4d4 guibg=#3c3c3c ctermfg=251 ctermbg=237
highlight CursorLine guifg=#d4d4d4 guibg=#3c3c3c ctermfg=251 ctermbg=237
highlight ColorColumn guifg=#d4d4d4 guibg=#3c3c3c ctermfg=251 ctermbg=237
highlight MatchParen guifg=#4c4c4c guibg=#808080 ctermfg=238 ctermbg=244
highlight lCursor guifg=#4c4c4c guibg=#d4d4d4 ctermfg=238 ctermbg=251 cterm=reverse
highlight CursorIM guifg=#4c4c4c guibg=#d4d4d4 ctermfg=238 ctermbg=251 cterm=reverse

highlight WildMenu guifg=#4c4c4c guibg=#d4d4d4 ctermfg=238 ctermbg=251 cterm=reverse

highlight Search guifg=#4c4c4c guibg=#d4d4d4 ctermfg=238 ctermbg=251
highlight IncSearch guifg=#4c4c4c guibg=#d4d4d4 ctermfg=238 ctermbg=251 cterm=reverse

highlight Folded guifg=#505050 guibg=#4c4c4c ctermfg=238 ctermbg=238
highlight Question guifg=#505050 guibg=#4c4c4c ctermfg=238 ctermbg=238
highlight Title guifg=#505050 guibg=#4c4c4c ctermfg=238 ctermbg=238 cterm=bold
highlight Conceal guifg=#505050 guibg=#4c4c4c ctermfg=238 ctermbg=238
highlight SpecialKey guifg=#505050 guibg=#4c4c4c ctermfg=238 ctermbg=238

highlight Visual guifg=#4c4c4c guibg=#d4d4d4 ctermfg=238 ctermbg=251
highlight VisualNOS guifg=#4c4c4c guibg=#d4d4d4 ctermfg=238 ctermbg=251 cterm=bold cterm=underline

highlight Directory guifg=#d4d4d4 guibg=#4c4c4c ctermfg=251 ctermbg=238
highlight ErrorMsg guifg=#d4d4d4 guibg=#4c4c4c ctermfg=251 ctermbg=238
highlight ModeMsg guifg=#d4d4d4 guibg=#4c4c4c ctermfg=251 ctermbg=238
highlight MoreMsg guifg=#d4d4d4 guibg=#4c4c4c ctermfg=251 ctermbg=238
highlight WarningMsg guifg=#d4d4d4 guibg=#4c4c4c ctermfg=251 ctermbg=238 cterm=bold

highlight DiffAdd guifg=#d4d4d4 guibg=#3c3c3c ctermfg=251 ctermbg=237
highlight DiffDelete guifg=#505050 guibg=#3c3c3c ctermfg=238 ctermbg=237
highlight DiffChange guifg=#505050 guibg=#505050 ctermfg=238 ctermbg=238
highlight DiffText guifg=#d4d4d4 guibg=#505050 ctermfg=251 ctermbg=238

highlight TabLineFill guibg=#d4d4d4 ctermbg=251
highlight TabLine guifg=#505050 guibg=#d4d4d4 ctermfg=238 ctermbg=251
highlight TabLineSel guifg=#d4d4d4 guibg=#505050 ctermfg=251 ctermbg=238 cterm=bold

highlight Pmenu guifg=#d4d4d4 guibg=#505050 ctermfg=251 ctermbg=238
highlight PmenuSel guifg=#4c4c4c guibg=#808080 ctermfg=238 ctermbg=244
highlight PmenuSbar guibg=#3c3c3c ctermbg=237
highlight PmenuThumb guibg=#505050 ctermbg=238

highlight SpellBad guifg=#d4d4d4 guisp=#808080 ctermfg=251 cterm=undercurl
highlight SpellCap guifg=#d4d4d4 guisp=#d4d4d4 ctermfg=251 ctermbg=251 cterm=undercurl
highlight SpellRare guifg=#505050 guisp=#808080 ctermfg=238 ctermbg=238 cterm=undercurl
highlight SpellLocal guifg=#505050 guisp=#d4d4d4 ctermfg=238 ctermbg=251 cterm=undercurl

" custom groups - with pink/magenta accents for syntax
highlight Comment guifg=#505050 guibg=#4c4c4c ctermfg=238 ctermbg=238
highlight Statement guifg=#d4a0c0 guibg=#4c4c4c ctermfg=175 ctermbg=238 cterm=bold
highlight Type guifg=#c0a0d0 guibg=#4c4c4c ctermfg=176 ctermbg=238
highlight PreProc guifg=#c0a0d0 guibg=#4c4c4c ctermfg=176 ctermbg=238
highlight Identifier guifg=#b0b0b0 guibg=#4c4c4c ctermfg=250 ctermbg=238
highlight Special guifg=#4c4c4c guibg=#d4d4d4 ctermfg=238 ctermbg=251
highlight Constant guifg=#d4d4d4 guibg=#3c3c3c ctermfg=251 ctermbg=237
highlight Error guifg=#505050 guibg=#4c4c4c ctermfg=238 ctermbg=238
highlight Underlined guifg=#d4d4d4 guibg=#4c4c4c ctermfg=251 ctermbg=238 cterm=underline
highlight Todo guifg=#4c4c4c guibg=#d4d4d4 ctermfg=238 ctermbg=251
