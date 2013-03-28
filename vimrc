"--------- pathogen ---------------------------------------------------------------------"
" Enable pathogen
" NOTE: this must be done first
call pathogen#incubate()
call pathogen#helptags()

 " 256 color syntax highlighting
set t_Co=256
syntax on
colorscheme pablo

" Turn on filetype recognition and indentation
filetype plugin indent on
set nocompatible

set nowrap
set formatoptions=qrn1
set nobackup
set ttyfast
set nocompatible

let mapleader = ","
set relativenumber
set ignorecase
set smartcase
set incsearch
set autoindent
set wildmenu
set wildmode=list:longest
set showmode
set showcmd
set showmatch
set hlsearch
set virtualedit=all
set guioptions-=T
set vb t_vb=
set ruler
set backspace=indent,eol,start
set laststatus=2
"set foldmethod=syntax
"set foldlevel=0

" Indention settings
"set cindent
set tabstop=4
set shiftwidth=4
set expandtab
" : = case in switch
" g = protected/public/private
" t = type for a function on different line
" c,C = comment blocks and stuff
" ( = after unclosed parenthesis
set cino=:0,g0,t0,c0,C1,(0

" Allow cursor roaming (outside of just the text)

" Additional filetypes
au BufRead,BufNewFile *.asm,*.ASM, setlocal filetype=ia64
au BufRead,BufNewFile *.s,*.S      setlocal filetype=gas
au BufRead,BufNewFile *.cls        setlocal filetype=tex
au BufRead,BufNewFile sconstruct   setlocal filetype=python
au BufRead,BufNewFile *.rl         setlocal filetype=ragel
au BufRead,BufNewFile *.rb         setlocal filetype=ruby
au BufRead,BufNewFile .bash*       setlocal filetype=sh
au BufRead,BufNewFile *.go         setlocal filetype=go
au BufRead,BufNewFile *.json       setlocal filetype=json

nnoremap <silent><SPACE> :silent noh<BAR>echo<CR>

" Complete parentheses, brackets, quotes, etc.
"inoremap () ()
"inoremap [] []
"inoremap {} {}
"inoremap (<BS> (<BS>
"inoremap [<BS> [<BS>
"inoremap {<BS> {<BS>
"inoremap ( ()<LEFT>
"inoremap [ []<LEFT>
"inoremap { {}<LEFT>
"inoremap (<CR> (<CR>)<ESC>O
"inoremap [<CR> [<CR>]<ESC>O
"inoremap {<CR> {<CR>}<ESC>O
"vnoremap ( s()<ESC>P<RIGHT>
"vnoremap [ s[]<ESC>P<RIGHT>
"vnoremap { s{}<ESC>P<RIGHT>
"vnoremap ' s''<ESC>P<RIGHT>
"vnoremap " s""<ESC>P<RIGHT>
"vnoremap ` s``<ESC>P<RIGHT>

nnoremap <C-I> ==
vnoremap <C-I> =
nnoremap <C-/> <LEADER>c<SPACE>
inoremap <C-/> <ESC><LEADER>c<SPACE>

" Window navigation
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

nnoremap <LEADER>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <LEADER>ev <C-W><C-V><C-L>:e $MYVIMRC<CR>

map <LEADER>jt  <ESC>:%!/opt/local/libexec/perl5.12/sitebin/json_xs -f json -t json-pretty<CR>

" Used to build a tag database for autocompletion in the current directory
map <LEADER>t :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
set tags+=./.tags,.tags,~/.vim/stltags,~/.vim/wxwidgetstags,~/.vim/qt4tags

"--------- omnicppcompletion ------------------------------------------------------------"
" Auto close the window after an omnicppcompletion
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"--------- yankring ---------------------------------------------------------------------"
"Set the yankring file name
let g:yankring_history_file = '.yankring_history'
