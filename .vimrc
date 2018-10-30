" Forget being compatible with good ol' vi
set nocompatible

" Setup vim-plug
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'vim-ruby/vim-ruby'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-rails'
Plug 'slim-template/vim-slim'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-unimpaired'
Plug 'othree/html5.vim'
Plug 'tpope/vim-eunuch'
Plug 'mileszs/ack.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'isRuslan/vim-es6'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'lambdatoast/elm.vim'

call plug#end()
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
" colorscheme cake
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
let g:rspec_command = "!SKIP_COVERAGE=true bundle exec rspec -I . {spec}"

" next/previous quickfix mappings
noremap <Leader>n :cnext<CR>
noremap <Leader>p :cprev<CR>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" go to line with enter
nnoremap <CR> G

function! TogglePaste()
        if(&paste == 0)
                set paste
                echo "Paste Mode Enabled"
        else
                set nopaste
                echo "Paste Mode Disabled"
        endif
endfunction

map <leader>p :call TogglePaste()<CR>
