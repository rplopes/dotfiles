" Set up Vundle and all plugins
filetype off
set rtp+=~/.nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'JazzCore/ctrlp-cmatcher'
Plugin 'bling/vim-airline'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-liquid'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-endwise'
call vundle#end()
filetype plugin indent on

" Set 256 colors (for screen)
set t_Co=256

" Prevent needing to hold shift for : commands (e.g. will allow ;w for save)
nnoremap ; :

" Enable changing files without needing to save current one
set hidden

" Enable filetype detection
filetype on

" Enable syntax highlighting
syntax enable

" Theme
color molokai

" Highlight current line
set cursorline

" Enable line numbers
set number

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Use jj to get out of insert mode without having to hit Esc or Ctrl+c
inoremap jj <ESC>

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" A smart auto indent
set smartindent
set autoindent
filetype indent on

" Set leader key to space
let mapleader = "\<Space>"

" Start scrolling 5 lines before the horizontal window border
set scrolloff=10

" Handle long lines (80 characters)
"set wrap
"set textwidth=80
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn=join(range(81,999),",")

" Split windows vertically using <space>w
nnoremap <leader>w <C-W>v<C-W>l

" Navigate buffers using Ctrl+a and Ctrl+d
nnoremap <C-d> :bnext<CR>
nnoremap <C-a> :bprevious<CR>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Select the text that was just pasted with <space>v
nnoremap <leader>v V`]

" Deal with trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'tomorrow'
