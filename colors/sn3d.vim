highlight clear
if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name="sn3d"

function! GuiFor(group, ...)
  let histring = 'hi ' . a:group . ' '

  if strlen(a:1)
    let histring .= 'ctermbg=' . a:1 . ' '
  endif

  if strlen(a:2)
    let histring .= 'ctermfg=' . a:2 . ' '
  endif

  if a:0 >= 3 && strlen(a:3)
    let histring .= 'cterm=' . a:3 . ' '
  endif

  execute histring
endfunction

call GuiFor("Statement", "NONE", "cyan")
call GuiFor("Type", "NONE", "cyan")
call GuiFor("Title", "NONE", "cyan")
call GuiFor("Identifier", "NONE", "cyan")
call GuiFor("PreProc", "NONE", "cyan")

call GuiFor("Comment", "NONE", "245")

call GuiFor("Special", "NONE", "white")

call GuiFor("Constant", "NONE", "white", "bold")
call GuiFor("Directory", "NONE", "white", "bold")

