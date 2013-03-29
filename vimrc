"--------- pathogen ---------------------------------------------------------------------"
" Enable pathogen
" NOTE: this must be done first
call pathogen#incubate()
call pathogen#helptags()

let mapleader = ","

 " 256 color syntax highlighting
set t_Co=256
syntax on
colorscheme pablo

" Turn on filetype recognition and indentation
filetype plugin indent on
set nocompatible

set nowrap
set formatoptions=qrn1
set ttyfast

set relativenumber

set smartcase
set incsearch
set hlsearch
set gdefault

set wildmenu
set wildmode=list:longest

set showmode
set showcmd
set showmatch
set ruler
set laststatus=2

set virtualedit=all
set vb t_vb=
set backspace=indent,eol,start

set scrolloff=3

set foldmethod=syntax
set foldlevel=99

set tabstop=2 shiftwidth=2 expandtab

set nobackup
set undofile
set undodir=~/.vim_undo

" : = case in switch
" g = protected/public/private
" t = type for a function on different line
" c,C = comment blocks and stuff
" ( = after unclosed parenthesis
set cino=:0,g0,t0,c0,C1,(0

" Additional filetypes
au BufRead,BufNewFile *.asm,*.ASM, setlocal filetype=ia64
au BufRead,BufNewFile *.s,*.S      setlocal filetype=gas
au BufRead,BufNewFile *.cls        setlocal filetype=tex
au BufRead,BufNewFile sconstruct   setlocal filetype=python
au BufRead,BufNewFile *.rl         setlocal filetype=ragel
au BufRead,BufNewFile *.rb         setlocal filetype=ruby
au BufRead,BufNewFile .bash*       setlocal filetype=sh
au BufRead,BufNewFile *.go         setlocal filetype=go

nnoremap <silent><SPACE> :silent noh<BAR>echo<CR>

nnoremap <C-I> ==
vnoremap <C-I> =
nnoremap <C-/> <LEADER>c<SPACE>
inoremap <C-/> <ESC><LEADER>c<SPACE>

" Window navigation
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

nnoremap <LEADER>w :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <LEADER>ev <C-W><C-V><C-L>:e $MYVIMRC<CR>

map <LEADER>jt  <ESC>:%!/opt/local/libexec/perl5.12/sitebin/json_xs -f json -t json-pretty<CR>

"--------- delmitMate -------------------------------------------------------------------"
" Make delimitMate handle newlines properly
let delimitMate_expand_cr = 1

"--------- yankring ---------------------------------------------------------------------"
"Set the yankring file name
let g:yankring_history_file = '.yankring_history'
