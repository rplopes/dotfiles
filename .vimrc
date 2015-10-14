execute pathogen#infect()

" Set 256 colors (for screen)
set t_Co=256

" Set not compatible with Vi
set nocompatible

" set the runtime path to include Vundle and initialize
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'JazzCore/ctrlp-cmatcher'
Plugin 'bling/vim-airline'
Plugin 'Raimondi/delimitMate'
Plugin 'HTML-AutoCloseTag'
Plugin 'tpope/vim-liquid'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-endwise'
Plugin 'thoughtbot/vim-rspec'
call vundle#end()
filetype plugin indent on

" Prevent needing to hold shift for : commands (e.g. will allow ;w for save)
nnoremap ; :

" Enable changing files without needing to save current one
set hidden

" Enable filetype detection
filetype on

" Enable syntax highlighting
syntax enable

" Highlight current line
set cursorline

" Theme
colorscheme molokai

" Enable line numbers
set number

" Make backspace work properly
set backspace=indent,eol,start

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Use jj to get out of insert mode without having to hit Esc or Ctrl+c
inoremap jj <ESC>

" Be smart when using tabs
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" A smart auto indent
set smartindent
set autoindent
filetype indent on

" Spellcheck and wrap commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72

" Set leader key to space
let mapleader = "\<Space>"

" Start scrolling 5 lines before the horizontal window border
set scrolloff=10

" Handle long lines (80 characters)
"set wrap
"set textwidth=80
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn=join(range(81,999),",")

" Split windows using <space>w
nnoremap <leader>w <C-W>v<C-W>l

" Navigate buffers using <space>l and <space>h
nnoremap <C-l> :bnext<CR>
nnoremap <C-h> :bprevious<CR>

" Smart way to move between windows
map <leader>j <C-W>j
map <leader>k <C-W>k
map <leader>h <C-W>h
map <leader>l <C-W>l

" Deal with trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Setup CtrlP
set wildignore+=*/tmp/*,*/log/*,*.so,*.swp,*.zip,*/vendor/*,*.png,*.jpg,*.otf,*.woff,*.jpeg,*.orig,*/\.git/*,*/uploads/*

" Setup vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'tomorrow'

"" Setup delimitMate
"let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" RSpec.vim mappings
map <Leader>c :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>z :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "!spring rspec {spec}"
