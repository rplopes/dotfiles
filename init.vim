filetype plugin on

call plug#begin('~/.config/nvim/plugged')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'raimondi/delimitmate'
Plug 'shougo/deoplete.nvim', { do: function('DoRemote') }
Plug 'tomasr/molokai'
Plug 'tpope/vim-endwise'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme molokai " Use the molokai colorscheme
syntax on " Enable syntax highlighting

" Behaviour
set autoread " Automatically read new file changes
set fileformat=unix " Use the unix EOL
set hidden " Enable changing files without needing to save the current one
set nobackup " Turn backup off
set nocompatible " Set not compatible with Vi
set noswapfile " Turn buffer swapfile off
set nowritebackup " Turn save backups off
set ttyfast " Enable redrawing of more characters

" Search
set hlsearch " Highlight all search matches
set ignorecase " Make search case-insensitive
set incsearch " Jump to partial search match
set smartcase " Make search case-sensitive when using uppercase characters
set wildignore+=*/\.git/*,*/cache/*,*/log/*,*/tmp/*,*/uploads/*,*/vendor/*,.DS_Store,*.jpeg,*.jpg,*.orig,*.otf,*.png,*.so,*.swp,*.woff,*.zip " Set patterns to ignore in search

" Styling
set cursorline " Highlight current line
set mousehide " Hide mouse pointer when typing
set noshowcmd " Hide partial command in the last line
set noshowmode " Do not put a message in the last line with the current mode
set nostartofline " Avoid jumping to start of line when scrolling
set number " Enable line numbers
set scrolloff=10 " Start scrolling 5 lines before the horizontal window border
set shortmess=filmnrxoOI " Shorten some messages
set visualbell " Use visual bell instead of system beep
set wildmenu " Show possible matches when invoking completion
set wildmode=list:longest,full " Select match based on longest common string
set whichwrap=<,>,[,] " Wrap when moving left/right at begining/end of line

" Text formatting
set autoindent " Enable automatic indentation
set backspace=indent,eol,start " Make backspace work properly
set expandtab " Use spaces instead of tabs
set shiftwidth=2 " Auto-indent using 2 spaces
set smartindent " Enable smart indentation
set tabstop=2 " Convert 1 tab to 2 spaces
set virtualedit=block " Allow placing cursor on empty section in visual block mode

" Spellcheck and wrap commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72

" Handle long lines (80 characters)
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn=join(range(81,999),",")

"" Customisations and aliases
let mapleader=" " " Set leader key to space

" Avoid having to hold shift for : commands in EN layouts (e.g. allows ;w for save)
nnoremap ; :

" Use jj to get out of insert mode without having to hit Esc or Ctrl+c
inoremap jj <ESC>

" Split vertically
map <leader>\ <C-W>v

" Split horizontally
map <leader>- <C-W>s

" Move between split windows
map <leader>j <C-W>j
map <leader>k <C-W>k
map <leader>h <C-W>h
map <leader>l <C-W>l

" Navigate buffers using Ctrl+l and Ctrl+h
nnoremap <C-l> :bnext<CR>
nnoremap <C-h> :bprevious<CR>

" Call ack
map <leader>a :Ack<space>

"" Plugins

" Initialize deoplete and set tab completion
let g:deoplete#enable_at_startup=1
let g:deoplete#enable_smart_case=1
let g:deoplete#enable_camel_case=1

" Set up vim-airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='tomorrow'

" Better grep (needs ripgrep installed)
let g:ackprg='rg -n'

" Faster CtrlP
let g:ctrlp_user_command='rg %s --files'
let g:ctrlp_use_caching=0
