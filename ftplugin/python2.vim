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

let g:syntastic_python_pylint_args = '--rcfile=/home/ngoldin/.vim/ftplugin/.pylintrc'
let b:python_highlight_all = 1
" python 2 vs 3
let g:jedi#force_py_version = 2
let b:python_version_3 = 0
let g:syntastic_python_python_exe = '/usr/bin/python -m py_compile'

let g:pymode = 0
let g:pymode_rope = 0
let g:syntastic_python_checkers = ['python', 'pylint', 'flake8', 'pyflakes']


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

