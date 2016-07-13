let cwd = getcwd()
syntax on
set ruler
set number
set showmatch
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=80
setlocal expandtab
setlocal autoindent
setlocal smarttab
setlocal colorcolumn=81
setlocal shiftround " use multiple of shiftwidth when identing withg < >
let g:syntastic_python_pylint_args = '--rcfile=/home/ngoldin/.vim/ftplugin/.pylintrc' 
let python_highlight_all = 1
let b:python_version_2 = 1


" Trim all spaces
"
"

func! DeleteTrailingSpaces()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
endfunc

autocmd BufWrite <buffer> :call DeleteTrailingSpaces()

" F5 save and run :!python <filename>
noremap <buffer> <F5> :w<CR>:!python %<CR>
" shift-F5 run with ipython
noremap <buffer> <S-F5> :w<CR>:!ipython %<CR>
" \bp - Add a breakpoint
nnoremap <buffer> <leader>bp :normal oimport pudb; pudb.set_trace() # TODO-REMOVE: BREAKPOINT-AUTODEL  # NOQA <Esc>
" \dbp - Delete all breakpoints
nnoremap <buffer> <leader>dbp :g/# TODO-REMOVE: BREAKPOINT-AUTODEL  # NOQA/d<CR>

"from pudb import set_trace; set_trace()
" remove autowrap
" remove trailing spaces

