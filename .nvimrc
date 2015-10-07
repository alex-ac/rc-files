" Enable 256 colors mode.
set t_Co=256
set encoding=utf-8

" Disable fucking mouse.
set mouse=

" Syntax highlighting
syntax on

" Tab width
set ts=2 sts=2 sw=2 et
set autoindent smartindent

" htns
noremap h <left>
noremap H <home>
noremap <C-h> <C-home>
noremap t <down>
noremap T <C-left>
noremap n <up>
noremap N <C-right>
noremap s <right>
noremap S <end>
noremap <C-s> <C-end>

" Save and call maxy by C-b
set autoread
set autowrite
autocmd QuickFixCmdPost [^l]* nested cwindow
noremap <C-b> :make<CR>

" Go to next/prefious error by C-n/C-N
noremap <C-n> :cn<CR>
noremap <C-N> :cp<CR>

" Diff colors
highlight DiffChange ctermbg=20
highlight DiffAdd ctermbg=22
highlight DiffDelete ctermbg=1
highlight DiffText ctermbg=8
set fillchars+=diff:\ ,vert:\ 

" Always show statusline
set laststatus=2

" Bash-like autocompletion.
set wildmenu
set wildmode=longest,list

" Plugins

set rtp +=~/.nvim/bundle/Vundle.vim
call vundle#begin('~/.nvim/bundle/')
Plugin 'VundleVim/Vundle.vim'

Plugin 'fatih/vim-go'

Plugin 'bling/vim-airline'

Plugin 'critiqjo/lldb.nvim'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'FelikZ/ctrlp-py-matcher'

Plugin 'scrooloose/nerdtree.git'
call vundle#end()

" Airline setup
let g:airline_powerline_fonts=1

" CtrlP setup
let g:ctrlp_max_files = 0
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn|out|native_client|v8|\.DS_Store|third_party|ppapi|chromeos|ios|android|mojo)$'
" let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
"   \ --ignore .git
"   \ --ignore .svn
"   \ --ignore .hg
"   \ --ignore .DS_Store
"   \ --ignore out
"   \ --ignore third_party
"   \ --ignore ppapi
"   \ --ignore v8
"   \ --ignore native_client
"   \ --ignore ios
"   \ --ignore android
"   \ --ignore chromeos
"   \ -g ""'
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_use_caching=1
let g:ctrlp_clear_cache_on_exit=0

" NerdTREE
noremap .sb :NERDTreeToggle<CR>

