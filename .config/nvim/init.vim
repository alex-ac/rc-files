" Enable 256 colors mode. {{{
if !exists("g:startup_options_set")
  let g:startup_options_set = 1
  set t_Co=256
  set encoding=utf-8
endif
" }}}
" Disable fucking mouse. {{{
set mouse=
" }}}
" Enable syntax highlighting {{{
syntax on
" }}}
" Setup folding {{{
set foldenable
set foldmethod=indent
" }}}
" Setup Tab width {{{
set ts=2 sts=2 sw=2 et
set autoindent smartindent
" }}}
" Setup Bindings {{{
" Setup leader {{{
let leader = '-'
let localleader = '+'
" }}}
" Remap htns = hjkl {{{
noremap h h
noremap t j
noremap n k
noremap s l
" }}}
" Remap n/s to j/k {{{
noremap j t
noremap k s
" }}}
" Save and call by C-b {{{
set autoread
set autowrite
autocmd QuickFixCmdPost [^l]* nested cwindow
noremap <C-b> :make<CR>
" }}}
" Go to next/prefious error by <leader>n/<leader>p {{{
noremap <leader>n :cn<CR>
noremap <leader>p :cp<CR>
" }}}
" }}}
" Diff colors {{{
highlight DiffChange ctermbg=20
highlight DiffAdd ctermbg=22
highlight DiffDelete ctermbg=1
highlight DiffText ctermbg=8
set fillchars+=diff:\ 
" }}}
" Setup vsplit {{{
set fillchars+=vert:\|
highlight clear VertSplit
" }}}
" Always show statusline {{{
set laststatus=2
" }}}
" Bash-like autocompletion. {{{
set wildmenu
set wildmode=longest,list
" }}}
" Plugins {{{
" Setup Vundle {{{
set rtp +=~/.nvim/bundle/Vundle.vim
" }}}
" List of plugins {{{
call vundle#begin('~/.nvim/bundle/')
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree.git'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
call vundle#end()
" }}}
" Setup Airline {{{
let g:airline_powerline_fonts=1
" }}}
" Setup NerdTREE {{{
noremap <leader>sb :NERDTreeToggle<CR>
" }}}
" Setup Tagbar {{{
noremap <leader>st :TagbarToggle<CR>
" }}}
" Setup Easytags {{{
let g:easytags_async = 1
" }}}
" }}}
" Python settings {{{
augroup Python
  au!
  autocmd FileType python setlocal sts=4 ts=4 sw=4
augroup END
" }}}
" Enable projects vimrc {{{
set exrc
" }}}
" vim: set foldmethod=marker :
