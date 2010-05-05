" Generated by Inspiration at Sweyla
" http://inspiration.sweyla.com/code/

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "inspiration-612393"

if version >= 700
  hi CursorLine guibg=#0A0400
  hi CursorColumn guibg=#0A0400
  hi MatchParen guifg=#4ADEE8 guibg=#0A0400 gui=bold
  hi Pmenu 		guifg=#FFFFFF guibg=#323232
  hi PmenuSel 	guifg=#FFFFFF guibg=#90FF8E
endif

" General colors
hi Cursor       guifg=NONE guibg=#FFFFFF gui=none
hi Normal       guifg=#FFFFFF guibg=#0A0400 gui=none
hi NonText      guifg=#FFFFFF guibg=#0A0400 gui=none
hi LineNr       guifg=#FFFFFF guibg=#323232 gui=none
hi Normal       guifg=#FFFFFF guibg=#0A0400 gui=none
hi StatusLine   guifg=#FFFFFF guibg=#0A0400 gui=italic
hi StatusLineNC guifg=#FFFFFF guibg=#0A0400 gui=none
hi VertSplit    guifg=#FFFFFF guibg=#0A0400 gui=none
hi Folded       guifg=#FFFFFF guibg=#0A0400 gui=none
hi Title		guifg=#90FF8E guibg=NONE	gui=bold
hi Visual		guifg=#4ADEE8 guibg=#323232 gui=none
hi SpecialKey	guifg=#337068 guibg=#323232 gui=none

" Syntax highlighting
hi Comment guifg=#90FF8E gui=none
hi Constant guifg=#337068 gui=none
hi Number guifg=#337068 gui=none
hi Identifier guifg=#88EF00 gui=none
hi Statement guifg=#88EF00 gui=none
hi Function guifg=#4EA3BC gui=none
hi Special guifg=#7BC41E gui=none
hi PreProc guifg=#7BC41E gui=none
hi Keyword guifg=#4ADEE8 gui=none
hi String guifg=#6FBA0D gui=none
hi Type guifg=#00FF88 gui=none
