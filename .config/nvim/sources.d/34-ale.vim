let g:ale_linters = {
      \   'python': ['flake8'],
      \   'rust': ['analyzer'],
      \   'cpp': ['cpplint'], 
      \   'c': ['cpplint'], 
      \}

let g:ale_fixers = {
      \    'python': ['yapf'],
      \}
nmap <F10> :ALEFix<CR>

let g:ale_fix_on_save = 1
let g:ale_sign_error= "◉"
let g:ale_sign_warning = "!"

nnoremap <silent> ej :ALENext<cr>
nnoremap <silent> ek :ALEPrevious<cr>

let g:ale_cpp_ccls_init_options = {
\   'cache': {
\       'directory': '/tmp/ccls'
\   }
\ }
