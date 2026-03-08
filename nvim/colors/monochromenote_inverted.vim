" Monochromenote - GIMP Inverted Variant
" True color-inverted style

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "monochromenote_gimp_invert"

" =========================
" Core
" =========================
hi Normal       guifg=#EAEAEA guibg=#4B4B4B
hi Cursor       guifg=#4B4B4B guibg=#FFFFFF
hi CursorLine   guibg=#3A3A3A
hi CursorColumn guibg=#3A3A3A

hi LineNr       guifg=#B0B0B0 guibg=#4B4B4B
hi CursorLineNr guifg=#FFFFFF guibg=#3A3A3A gui=bold

hi VertSplit    guifg=#2F2F2F guibg=#4B4B4B
hi StatusLine   guifg=#2F2F2F guibg=#EAEAEA gui=bold
hi StatusLineNC guifg=#B0B0B0 guibg=#2F2F2F

" =========================
" Selection / Search
" =========================
hi Visual       guibg=#2F2F2F
hi Search       guifg=#4B4B4B guibg=#FFF29E
hi IncSearch    guifg=#4B4B4B guibg=#FF9ED6

hi MatchParen   guifg=#FFFFFF guibg=#2F2F2F gui=bold

" =========================
" Popup / Menu
" =========================
hi Pmenu        guifg=#EAEAEA guibg=#2F2F2F
hi PmenuSel     guifg=#2F2F2F guibg=#9EEFFF
hi PmenuSbar    guibg=#3A3A3A
hi PmenuThumb   guibg=#B0B0B0

" =========================
" Syntax
" =========================
hi Comment      guifg=#B0B0B0 gui=italic

hi Constant     guifg=#9EFFC4
hi String       guifg=#9EEFFF
hi Character    guifg=#9EEFFF
hi Number       guifg=#9EFFC4
hi Boolean      guifg=#FF9ED6
hi Float        guifg=#9EFFC4

hi Identifier   guifg=#EAEAEA
hi Function     guifg=#FFF29E

hi Statement    guifg=#FF9ED6 gui=bold
hi Conditional  guifg=#FF9ED6
hi Repeat       guifg=#FF9ED6
hi Label        guifg=#FF9ED6
hi Operator     guifg=#EAEAEA
hi Keyword      guifg=#FF9ED6
hi Exception    guifg=#FF9ED6

hi Type         guifg=#9EFFC4 gui=bold
hi StorageClass guifg=#9EFFC4
hi Structure    guifg=#9EFFC4
hi Typedef      guifg=#9EFFC4

hi Special      guifg=#9EEFFF
hi SpecialChar  guifg=#9EEFFF
hi Tag          guifg=#FFF29E
hi Delimiter    guifg=#EAEAEA
hi SpecialComment guifg=#B0B0B0
hi Debug        guifg=#FF9ED6

" =========================
" Diagnostics
" =========================
hi Error        guifg=#FFFFFF guibg=#FF6B6B gui=bold
hi ErrorMsg     guifg=#FFFFFF guibg=#FF6B6B
hi WarningMsg   guifg=#4B4B4B guibg=#FFF29E

hi Todo         guifg=#2F2F2F guibg=#9EEFFF gui=bold

" =========================
" Diff
" =========================
hi DiffAdd      guibg=#2F4F3F
hi DiffChange   guibg=#3F3F2F
hi DiffDelete   guibg=#4F2F2F
hi DiffText     guibg=#5F5F3F gui=bold

" =========================
" Misc
" =========================
hi NonText      guifg=#2F2F2F
hi Whitespace   guifg=#2F2F2F
hi Folded       guifg=#B0B0B0 guibg=#2F2F2F
hi FoldColumn   guifg=#B0B0B0 guibg=#2F2F2F
hi SignColumn   guibg=#4B4B4B
hi Directory    guifg=#9EEFFF
hi Title        guifg=#FFF29E gui=bold
