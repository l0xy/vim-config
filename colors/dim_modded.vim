highlight clear

if exists("syntax_on")
  syntax reset
endif

exec "source " . expand('<sfile>:p:h') . "/default-light.vim"

let colors_name = "dim_modded"

" In diffs, added lines are green, changed lines are yellow, deleted lines are
" red, and changed text (within a changed line) is bright yellow and bold.
highlight DiffAdd        ctermfg=0    ctermbg=2
highlight DiffChange     ctermfg=0    ctermbg=3
highlight DiffDelete     ctermfg=0    ctermbg=1
highlight DiffText       ctermfg=0    ctermbg=11   cterm=bold

" Invert selected lines in visual mode
highlight Visual         ctermfg=NONE ctermbg=NONE cterm=inverse
highlight Cursor         ctermfg=0 ctermbg=NONE cterm=inverse

" Highlight search matches in black, with a yellow background
highlight Search         ctermfg=0    ctermbg=11

highlight SignColumn                     ctermbg=none
highlight ALEInfoSign       ctermfg=8    ctermbg=none
highlight ALEWarningSign    ctermfg=214  ctermbg=none
highlight ALEErrorSign      ctermfg=196    ctermbg=none

" Dim line numbers, comments, color columns, the status line, splits and sign
" columns.
if &background == "light"
	highlight LineNr            ctermfg=7
	highlight Comment           ctermfg=7
	highlight ColorColumn       ctermfg=8    ctermbg=7
	highlight Folded            ctermfg=8    ctermbg=7
	highlight FoldColumn        ctermfg=8    ctermbg=7
	highlight Pmenu             ctermfg=0    ctermbg=7
	highlight PmenuSel          ctermfg=7    ctermbg=0
	highlight SpellCap          ctermfg=8    ctermbg=7
	highlight StatusLine        ctermfg=0    ctermbg=7    cterm=bold
	highlight StatusLineNC      ctermfg=8    ctermbg=7    cterm=NONE
	highlight VertSplit         ctermfg=8    ctermbg=7    cterm=NONE
else
	highlight LineNr       ctermfg=8
	highlight Comment      ctermfg=8
	highlight ColorColumn  ctermfg=7    ctermbg=8
	highlight Folded       ctermfg=7    ctermbg=8
	highlight FoldColumn   ctermfg=7    ctermbg=NONE
	highlight Pmenu        ctermfg=15   ctermbg=8
	highlight PmenuSel     ctermfg=8    ctermbg=15
	highlight SpellCap     ctermfg=7    ctermbg=8
	highlight StatusLine   ctermfg=7   ctermbg=8    cterm=bold
	highlight StatusLineNC ctermfg=7    ctermbg=8    cterm=NONE
	highlight TabLine			 ctermfg=8   ctermbg=7    cterm=NONE
	highlight TabLineFill	 ctermfg=8   ctermbg=7   
	highlight TabLineSel	 ctermfg=8   ctermbg=NONE   
	highlight VertSplit    ctermfg=8    ctermbg=NONE cterm=bold
	" explore: highlighted line @ cursor
	highlight TermCursor	ctermfg=NONE	ctermbg=NONE cterm=inverse
	highlight CursorLine	ctermfg=NONE	ctermbg=NONE
	highlight Directory   ctermfg=Green ctermbg=NONE

	if &t_Co > 16
		highlight LineNr 			ctermfg=234
		highlight LineNr 			ctermfg=232
		highlight CursorLine 	ctermfg=none ctermbg=233		cterm=None
		highlight CursorLineNr 			ctermfg=236  cterm=None
		highlight LineNr 			ctermfg=234
		highlight SpecialKey	ctermfg=233 ctermbg=None
		highlight Folded			ctermfg=236 ctermbg=232
	endif
endif
