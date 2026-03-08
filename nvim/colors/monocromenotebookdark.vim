" vim:set ts=8 sts=2 sw=2 tw=0 et:
" Monochrome Note Dark - Inverted version of monochromenote

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "monocromenotebookdark"

" Normal group at first
highlight Normal guifg=#e4e4e4 guibg=#4c4c4c ctermfg=254 ctermbg=239

" default groups
highlight NonText guifg=#808080 guibg=#4c4c4c ctermfg=244 ctermbg=239
highlight Terminal guifg=#4c4c4c guibg=#e4e4e4 ctermfg=239 ctermbg=254
highlight FoldColumn guifg=#808080 guibg=#808080 ctermfg=244 ctermbg=244
highlight SignColumn guifg=#808080 guibg=#808080 ctermfg=244 ctermbg=244

highlight LineNr guifg=#1a1a1a guibg=#4c4c4c ctermfg=233 ctermbg=239
highlight CursorLineNr guifg=#1a1a1a guibg=#4c4c4c ctermfg=233 ctermbg=239 bold

highlight StatusLine guifg=#1a1a1a guibg=#bfbfbf ctermfg=233 ctermbg=251 bold
highlight StatusLineNC guifg=#808080 guibg=#4c4c4c ctermfg=244 ctermbg=239
highlight VertSplit guifg=#4c4c4c guibg=#4c4c4c ctermfg=239 ctermbg=239
highlight StatusLineTerm guifg=#1a1a1a guibg=#404040 ctermfg=233 ctermbg=238 bold
highlight StatusLineTermNC guifg=#808080 guibg=#404040 ctermfg=244 ctermbg=238

highlight Cursor guifg=#4c4c4c guibg=#e4e4e4 ctermfg=239 ctermbg=254 reverse
highlight CursorColumn guifg=#e4e4e4 guibg=#333333 ctermfg=254 ctermbg=236
highlight CursorLine guifg=#e4e4e4 guibg=#333333 ctermfg=254 ctermbg=236
highlight ColorColumn guifg=#e4e4e4 guibg=#333333 ctermfg=254 ctermbg=236
highlight MatchParen guifg=#4c4c4c guibg=#404040 ctermfg=239 ctermbg=238
highlight lCursor guifg=#4c4c4c guibg=#e4e4e4 ctermfg=239 ctermbg=254 reverse
highlight CursorIM guifg=#4c4c4c guibg=#e4e4e4 ctermfg=239 ctermbg=254 reverse

highlight WildMenu guifg=#4c4c4c guibg=#e4e4e4 ctermfg=239 ctermbg=254 reverse

highlight Search guifg=#4c4c4c guibg=#e4e4e4 ctermfg=239 ctermbg=254
highlight IncSearch guifg=#4c4c4c guibg=#e4e4e4 ctermfg=239 ctermbg=254 reverse

highlight Folded guifg=#808080 guibg=#4c4c4c ctermfg=244 ctermbg=239
highlight Question guifg=#808080 guibg=#4c4c4c ctermfg=244 ctermbg=239
highlight Title guifg=#808080 guibg=#4c4c4c ctermfg=244 ctermbg=239 bold
highlight Conceal guifg=#808080 guibg=#4c4c4c ctermfg=244 ctermbg=239
highlight SpecialKey guifg=#808080 guibg=#4c4c4c ctermfg=244 ctermbg=239

highlight Visual guifg=#4c4c4c guibg=#e4e4e4 ctermfg=239 ctermbg=254
highlight VisualNOS guifg=#4c4c4c guibg=#e4e4e4 ctermfg=239 ctermbg=254 bold underline

highlight Directory guifg=#e4e4e4 guibg=#4c4c4c ctermfg=254 ctermbg=239
highlight ErrorMsg guifg=#e4e4e4 guibg=#4c4c4c ctermfg=254 ctermbg=239
highlight ModeMsg guifg=#e4e4e4 guibg=#4c4c4c ctermfg=254 ctermbg=239
highlight MoreMsg guifg=#e4e4e4 guibg=#4c4c4c ctermfg=254 ctermbg=239
highlight WarningMsg guifg=#e4e4e4 guibg=#4c4c4c ctermfg=254 ctermbg=239 bold

highlight DiffAdd guifg=#e4e4e4 guibg=#333333 ctermfg=254 ctermbg=236
highlight DiffDelete guifg=#808080 guibg=#333333 ctermfg=244 ctermbg=236
highlight DiffChange guifg=#808080 guibg=#7f7f7f ctermfg=244 ctermbg=243
highlight DiffText guifg=#e4e4e4 guibg=#7f7f7f ctermfg=254 ctermbg=243

highlight TabLineFill guibg=#e4e4e4 ctermbg=254
highlight TabLine guifg=#7f7f7f guibg=#e4e4e4 ctermfg=243 ctermbg=254
highlight TabLineSel guifg=#e4e4e4 guibg=#7f7f7f ctermfg=254 ctermbg=243 bold

highlight Pmenu guifg=#e4e4e4 guibg=#7f7f7f ctermfg=254 ctermbg=243
highlight PmenuSel guifg=#4c4c4c guibg=#404040 ctermfg=239 ctermbg=238
highlight PmenuSbar guibg=#404040 ctermbg=238
highlight PmenuThumb guibg=#808080 ctermbg=244

highlight SpellBad guifg=#e4e4e4 guisp=#ed8585 ctermfg=254 undercurl
highlight SpellCap guifg=#e4e4e4 guisp=#e4e4e4 ctermfg=254 ctermbg=254 undercurl
highlight SpellRare guifg=#808080 guisp=#808080 ctermfg=244 ctermbg=244 undercurl
highlight SpellLocal guifg=#808080 guisp=#e4e4e4 ctermfg=244 ctermbg=254 undercurl

" custom groups
highlight Comment guifg=#1b1b1b guibg=#4c4c4c ctermfg=233 ctermbg=239
highlight Statement guifg=#e4e4e4 guibg=#4c4c4c ctermfg=254 ctermbg=239 bold
highlight Type guifg=#e4e4e4 guibg=#4c4c4c ctermfg=254 ctermbg=239
highlight PreProc guifg=#e4e4e4 guibg=#4c4c4c ctermfg=254 ctermbg=239
highlight Identifier guifg=#e4e4e4 guibg=#4c4c4c ctermfg=254 ctermbg=239
highlight Special guifg=#4c4c4c guibg=#e4e4e4 ctermfg=239 ctermbg=254
highlight Constant guifg=#e4e4e4 guibg=#333333 ctermfg=254 ctermbg=236
highlight Error guifg=#808080 guibg=#4c4c4c ctermfg=244 ctermbg=239
highlight Underlined guifg=#e4e4e4 guibg=#4c4c4c ctermfg=254 ctermbg=239 underline
highlight Todo guifg=#4c4c4c guibg=#e4e4e4 ctermfg=239 ctermbg=254

" Treesitter groups for neovim
highlight @keyword guifg=#ed8585 guibg=#4c4c4c ctermfg=210 ctermbg=239
highlight @string guifg=#f4a4d4 guibg=#333333 ctermfg=219 ctermbg=236
highlight @number guifg=#4c4c4c guibg=#bfbfbf ctermfg=239 ctermbg=251
