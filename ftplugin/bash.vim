filetype indent plugin on
let cwd = getcwd()
syntax on
set ruler
set number
set showmatch
set modeline
setlocal tabstop=8
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=80
setlocal expandtab
"setlocal autoindent
setlocal smarttab
setlocal colorcolumn=81
setlocal shiftround " use multiple of shiftwidth when identing withg < >


func! DeleteTrailingSpaces()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
endfunc

autocmd BufWrite <buffer> :call DeleteTrailingSpaces()
