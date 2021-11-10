"==================================================
" Basic Settings
"==================================================
let mapleader = ";"
let maplocalleader = ","
set ch=2            " Make command line two lines high
set autoread        " If file changes outside of Vim and has not changed inside Vim, read it again.
set hidden          " buffer becomes hidden when it is abandoned. 
set nowrap          " When on, lines longer than the width of the window will wrap
set clipboard=unnamedplus  "clipboard register '+' for all ops which would usually go to '+' 
set showmatch       " when bracket inserted, jump to matching one.  
set foldmethod=indent
set foldnestmax=4
set showmode        " If in Insert, Replace or Visual mode put a message on the last line.
set showcmd         " In Visual mode the size of the selected area is shown:
set shortmess+=c    " suppress the annoying messages  
set matchpairs+=<:> " Show matching <> 
filetype plugin indent on
syntax on
set complete-=i     " Key word completion ignores included files
set autoindent      " always set autoindenting on
set encoding=utf-8  " UTF-8 character encoding
set ruler           " how the cursor position all the time
set formatoptions=croqj  " automatic formatting 
set scrolloff=5     " Minimal number of screen lines to keep above and below the cursor.
set wildmode=longest,list
set lazyredraw      "screen will not be redrawn while executing macros, registers, etc
set wrap
set backspace=indent,eol,start
set linebreak
set nostartofline
set mouse=a          " Mouse support 
set nobackup
set nowritebackup
set updatetime=300

if (has("termguicolors"))
    set termguicolors
endif

if !has('nvim') && &ttimeoutlen == -1
  set ttimeout
  set ttimeoutlen=100
endif

" For conceal markers.
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif


"==================================================
" Tab expanded to 4 spaces
"==================================================
set smarttab        "<Tab> in front of a line inserts blanks according to 'shiftwidth'
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"==================================================
" Search settings
"==================================================
set hlsearch        " Highligh searches
set incsearch       " do incremental searching
set ignorecase   
set infercase       " smarter completions that will be case aware when ignorecase is on
set smartcase       " if searching and search contains upper case, make case sensitive search

"==================================================
" EOL Whitespace Highlighting 
"==================================================
" highlight WhitespaceEOL ctermbg=red guibg=red
" match WhitespaceEOL /\s\+$/

"==================================================
" Relative Numbering
"==================================================
set number relativenumber
set nu rnu

"==================================================
" Slime 
"==================================================
let g:slime_target = "neovim"
" type `:echo b:terminal_job_id` to get the job_id for that terminal

"==================================================
" nvim-gdb 
"==================================================

let g:nvimgdb_config_override = {
  \ 'key_next': 'n',
  \ 'key_step': 's',
  \ 'key_finish': 'f',
  \ 'key_continue': 'c',
  \ 'key_until': 'u',
  \ 'key_breakpoint': 'b',
  \ }
