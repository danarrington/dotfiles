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
colorscheme darcula
" colorscheme vividchalk

" Who doesn't like autoindent?
set autoindent

" Spaces are better than a tab character
set expandtab
set smarttab

" Who wants an 8 character tab?  Not me!
set shiftwidth=2
set softtabstop=2


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

" Custom mapping
vmap <Tab> >gv
vmap <S-Tab> <gv
map <C-n> :NERDTreeToggle<CR>

" Space as leader
nnoremap <SPACE> <Nop>
let mapleader=" "

" leader-e to edit in current dir
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" quick save/quit
noremap <Leader>s :update<CR>
noremap <Leader>q :q<CR>

" vim-rspec mappings
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>r :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
