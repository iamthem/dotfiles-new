call plug#begin('/home/osg-leandro/.local/share/nvim/site/autoload')     
"==================================================
"Plug in Manager 
"==================================================
Plug 'junegunn/vim-plug'
"==================================================
" R Plugins 
"==================================================
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}  " swissknife for vim and R communication
Plug 'chrisbra/csv.vim' " for viewing data directly in vim R (Nvim-R)
Plug 'gaalcaras/ncm-R' " Auto completion  
"==================================================
"" Python 
"==================================================
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' } " Python syntax highlighting and more
Plug 'Vimjas/vim-python-pep8-indent', {'for': 'python'}  " Python indent (follows the PEP8 style)
Plug 'sansyrox/vim-python-virtualenv'
"==================================================
"" Jupyter 
"==================================================
Plug 'hkupty/iron.nvim'                             " Repl 
Plug 'GCBallesteros/jupytext.vim'                   " Convert .ipynb to text files 
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
Plug 'GCBallesteros/vim-textobj-hydrogen'           " Syntax highlighting inside code chunks
"==================================================
" Movement  
"==================================================
Plug 'justinmk/vim-sneak'           " Two character shortcut starting with `s`
Plug 'easymotion/vim-easymotion'    " Move easy 
" Popups  
"==================================================
Plug 'mbbill/undotree'                                                   " graphical undo history
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } " File Tree
"==================================================
" Matching  
"==================================================
Plug 'tpope/vim-surround'       "Manage surroundings intelligently
Plug 'jiangmiao/auto-pairs'     "Insert or delete brackets, parens, quotes in pair.
Plug 'andymass/vim-matchup'     "Matching stuff intelligently
"==================================================
" Status bar
"==================================================
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"==================================================
" Eye Candy
"==================================================
Plug 'machakann/vim-highlightedyank'   " Highlight yanked region
Plug 'evansalter/vim-checklist'        " Checklist handler
Plug 'tpope/vim-commentary'            " Comment plugin
Plug 'itchyny/vim-highlighturl'        " Highlight URLs inside vim
Plug 'michaeljsmith/vim-indent-object' " Add indent object for vim (useful for languages like Python)
Plug 'godlygeek/tabular'               " Line things up nicely
Plug 'ryanoasis/vim-devicons'          " Cool icons everywhere!
" Theme  
"==================================================
Plug 'danilo-augusto/vim-afterglow'
"==================================================
" Fzf
"==================================================
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"==================================================
" Language engines
"==================================================
Plug 'dense-analysis/ale'               "Linting 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Coc extensions: coc-snippets, coc-json, coc-rust-analyzer,
"                coc-r-lsp, coc-fzf-preview, coc-texlab,
"                coc-webview, coc-ultisnips, coc-pyright,
"                coc-pydocstring, coc-markmap, coc-markdown-preview-enhanced 
"                coc-ltex, coc-browser, coc-jedi
"==================================================
" Git
"==================================================
Plug 'airblade/vim-gitgutter'       "Hunk hunk management  
Plug 'tpope/vim-fugitive'           "Run run bugs
Plug 'tpope/vim-rhubarb'            "The Hub to the Git
Plug 'jreybert/vimagit'             "See changes jump to 'em
"==================================================
" Snips 
"==================================================
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'ncm2/ncm2-ultisnips'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'roxma/nvim-yarp' 
"==================================================
" Misc
"==================================================
Plug '907th/vim-auto-save'                    " Autosave files on certain events
Plug 'udalov/kotlin-vim', { 'for': 'kotlin' } " Kotlin
Plug 'ludovicchabant/vim-gutentags'           " Tags
Plug 'AndrewRadev/bufferize.vim'              " Run command and show output in buffer
Plug 'reedes/vim-lexical'                     " Improved spell-check and thesaurus/dictionary completion
Plug 'junegunn/goyo.vim'                      " Distraction-Free writing 
call plug#end()
