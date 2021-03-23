"==================================================
" General settings
"==================================================
let g:airline_theme='afterglow'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = "◉:"
let airline#extensions#ale#warning_symbol = '!:'
let g:airline#extensions#hunks#hunk_symbols = ['✚ ', '➜ ', '✘ ']
let g:airline#extensions#fugitiveline#enabled = 1
"let g:airline#extensions#vimagit#enabled = 0
let g:airline#extensions#vimtex#enabled = 1

" Buffer number display format
let g:airline#extensions#tabline#buffer_nr_format = '%s. '

" Whether to show function or other tags on status line
let g:airline#extensions#tagbar#enabled = 1
" Skip empty sections if there are nothing to show,
let g:airline_skip_empty_sections = 1

" Whether to use powerline symbols, see https://goo.gl/XLY19H.
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

 "Only show git hunks which are non-zero
let g:airline#extensions#hunks#non_zero_only = 1

" Speed up airline
let g:airline_highlighting_cache = 1

" Disable coc 
let g:airline#extensions#coc#enabled = 0

"==================================================
" Unicode Symbols 
"==================================================
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.whitespace = 'Ξ'

"==================================================
" Airline Symbols 
"==================================================
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
