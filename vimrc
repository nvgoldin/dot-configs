" Load plugins with pathogen
execute pathogen#infect()
call pathogen#helptags()

" Syntastic configuration
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=5

" Global settings, rest are in ~/.vim/ftplugin/
set showmode		" show what is being edited
set nowrap		" dont wrap lines
set copyindent		" copy the previous ident when autoident
set ruler
set ignorecase		" ignore case when searching
set smartcase		" ignore case if search pattern is all lower case
set hlsearch		" highlight search terms
set incsearch		" show search on the fly
set mouse=a		" enable mouse if supported
set clipboard=unnamed	" normal OS clipboard interaction
set title		" change the terminal title
set visualbell		" don't beep
set noerrorbells	" don't beep
set cursorline		" underline the current line for quick orientation

set number
set showmatch
set background=dark
set foldmethod=indent
set foldlevel=99
set modeline
syntax on

set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)\ -\ %{v:servername}
set spellfile=~/.vim/spell/en.utf-8.add
" Various filetypes which aren't important enoguh to be in a different file
au BufRead,BufNewFile *.yaml set filetype=ansible
filetype plugin indent on

let g:jedi#use_splits_not_buffers = "left"

" Try loading Powerline configs
" if not installed on remote machine ignore
try
	python from powerline.vim import setup as powerline_setup
	python powerline_setup()
	python del powerline_setup
	set laststatus=2
	set t_Co=256
catch
endtry

" Default colorscheme
colorscheme gruvbox

" Remove annoying "thanks for flying with vim" topic
"
function! ResetTitle()
	    exec "set title t_ts='' t_fs=''"
	    exec ":!echo -e '\033kbash\033\\'\<CR>"
endfunction
au VimLeave * silent call ResetTitle()
