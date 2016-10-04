" Forget being compatible with good ol' vi
set nocompatible

" Setup vundle
filetype off
set rtp+=~/.vim/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-rails'
Plugin 'slim-template/vim-slim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-unimpaired'
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'mileszs/ack.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'isRuslan/vim-es6'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Turn on that syntax highlighting
syntax on

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" Set default color scheme
" colorscheme darcula
" colorscheme vividchalk
colorscheme sorcerer
let g:airline_theme='ubaryd'
" enable powerline symbols
" let g:airline_powerline_fonts = 1

" Who doesn't like autoindent?
set autoindent

" Spaces are better than a tab character
set expandtab
set smarttab

" Who wants an 8 character tab?  Not me!
set shiftwidth=2
set softtabstop=2

" Make it obvious where 80 characters is
" set textwidth=80
set colorcolumn=100

"line Numbers PWN!
set number

"vim color scheme is messed up with 8 colors, use 256
let &t_Co=256

"set up ctrl+p
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_use_caching = 0

"enable matchit
runtime macros/matchit.vim

" use ack instead of grep
set grepprg=ack

" always show current file in status line
set statusline=[%n]\ %<%f%h%m
set laststatus=2

" Custom mapping
vmap <Tab> >gv
vmap <S-Tab> <gv
map <C-n> :NERDTreeToggle<CR>

" Space as leader
nnoremap <SPACE> <Nop>
let mapleader=" "

" leader-e to edit in current dir
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" leader-a to :Ack!
map <Leader>a :Ack! 
map <Leader>b :Ack! --ruby 

" leader-c closes quickfix window
noremap <Leader>c :ccl<CR>

" quick save/quit
noremap <Leader>s :update<CR>
noremap <Leader>q :q<CR>

" vim-rspec mappings
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>r :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>
let g:rspec_command = "!bundle exec rspec -I . {spec}"

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
