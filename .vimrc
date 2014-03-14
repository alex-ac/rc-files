" Enable syntax highlighting.
syn on

" Set tab width to the 2 spaces. Replace tabs with spaces.
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab

" Fix Arrows in the insert mode.
set term=builtin_ansi

" Setup indenting.
set autoindent
set smartindent

" Enable 256 colors mode.
set t_Co=256

" Fix backspace.
set backspace=indent,eol,start

" Enable CtrlP plugin.
set runtimepath^=~/.vim/bundle/ctrlp.vim
" Default limit is too small. But with this limit it can work slow.
let g:ctrlp_max_files=500000

" Enable Git plugin.
set runtimepath^=~/.vim/bundle/vim-fugitive.vim

" Highlight search matches.
set hlsearch

" Enable x, y position displaying in the status line.
set ruler

if has("win32")
  " For windows set error parsing to the msvc mode.
  set errorformat=\ %#%f(%l)\ :\ %m
endif

" Draw vertical line at column 80.
set colorcolumn=80
highlight ColorColumn ctermbg=0

" Highlight Symbols after 80 column.
highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%81v.\+/

" Highlight trailing whitespaces.
highlight UnwantedSpaces ctermbg=red
match UnwantedSpaces /[ \t]$/

" Set line symbols and colors. Unicode box drawing is used.
highlight VertSplit ctermfg=0 ctermbg=yellow
highlight StatusLine ctermfg=0 ctermbg=green
highlight StatusLineNC ctermfg=0 ctermbg=yellow
set fillchars+=vert:│,stl:\─,stlnc:\─

" Remap hjkl to the dworak htns
noremap s l
noremap n k
noremap t j

" Save and call make by C-b
noremap <C-b> :wall<CR>:make<CR>
" Go to next/previous error by C-n/C-p
noremap <C-n> :cn<CR>
noremap <C-p> :cp<CR>

