" Set not compatible with Vi
set nocompatible

" Enable filetype detection
filetype on

" Enable syntax highlighting
syntax enable

" Highlight current line
set cursorline

" Set 256 colours
set t_Co=256

" Theme
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

" Enable line numbers
set number

" Prevent needing to hold shift for : commands (e.g. will allow ;w for save)
nnoremap ; :

" Enable changing files without needing to save current one
set hidden

" Turn backup off
set nobackup
set nowb
set noswapfile

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

" Start scrolling 10 lines before the horizontal window border
set scrolloff=10

" Handle long lines (80 characters)
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn=join(range(81,999),",")

" Split windows using \w
nnoremap <leader>w <C-W>v<C-W>l

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Deal with trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
