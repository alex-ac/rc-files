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
" highlight column 80 as a guide
set colorcolumn=80
highlight ColorColumn ctermbg=236
" highlight long lines as error
highlight LongLine ctermbg=1 ctermfg=15
highlight TrailingWhitespace ctermbg=1 ctermfg=15
highlight Tabs ctermbg=1 ctermfg=15
match LongLine '\%>80v.\+'
2match TrailingWhitespace ' \+\n'
3match Tabs '\t'
" }}}
" Setup Tab width {{{
set ts=2 sts=2 sw=2 et
set autoindent smartindent
" }}}
" Setup Bindings {{{
" Disable arrows {{{
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
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
" Go to next/prefious error by <Leader>n/<leader>p {{{
noremap <Leader>n :cn<CR>
noremap <Leader>p :cp<CR>
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
filetype off
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
Plugin 'alex-ac/vim-plist'
Plugin 'flazz/vim-colorschemes'
Plugin 'keith/vim-swift'
call vundle#end()
syntax on
filetype plugin indent on
" }}}
" Setup Airline {{{
let g:airline_powerline_fonts=1
" }}}
" Setup NerdTREE {{{
noremap <Leader>sb :NERDTreeToggle<CR>
" }}}
" Setup Tagbar {{{
noremap <Leader>st :TagbarToggle<CR>
" }}}
" Setup Easytags {{{
let g:easytags_async = 1
let g:easytags_auto_highlight = 0
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
" Terminal setup {{{
tnoremap <ESC> <c-\><c-n>
noremap <Leader>tt :botright10split term:///usr/local/bin/bash\ -i\ -l<cr>:set wfh<cr>i
" }}}
colorscheme monokai
