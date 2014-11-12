
"" Load Pathogen for plugin management
call pathogen#infect()
call pathogen#helptags()

colorscheme desert

set nocompatible                " choose no compatibility with legacy vi
syntax on
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
"set number                      " line numbers on the left hand side of the buffer
"set numberwidth=4

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Backups and swap files
set backupdir=~/.vim/_backup    " where to put backup files
set directory=~/.vim/_temp      " where to put swap files

"" Key mappings

" set a button to turn line numbers on/off
nmap <C-N><C-N> :set invnumber<CR>

" use comma as the leader key instead of backslash
let mapleader=","

" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr> 
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

" make it easier to open verticle splits
nnoremap <leader>w <C-w>v<C-w>l

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" easier way to switch to the previous buffer
nnoremap <leader><leader> <c-^>

" disable help key
noremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" highlight current column and row
set cursorline
set cursorcolumn
highlight CursorLine cterm=NONE ctermbg=blue
highlight CursorColumn cterm=NONE ctermbg=blue

" nerdtree
map <C-n> :NERDTreeToggle<CR>
