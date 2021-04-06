"" Whether to show doc string
"let g:deoplete#sources#jedi#show_docstring = 0

"" For large package, set autocomplete wait time longer
"let g:deoplete#sources#jedi#server_timeout = 50

"" Ignore jedi errors during completion
"let g:deoplete#sources#jedi#ignore_errors = 1

""jedi-vim settings
"" Disable autocompletion, because I use deoplete for auto-completion
"let g:jedi#completions_enabled = 0

"" Whether to show function call signature
"let g:jedi#show_call_signatures = '0'

"Execute python script on F1
autocmd FileType python map <buffer> <C-<CR>> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <C-<CR>> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" REPL Config
let cmdline_map_start = '<C-s>'
let cmdline_map_send = '<C-c>'
let cmdline_map_quit = '<C-e>'

"Host prog
let g:python3_host_prog = "/usr/bin/python3"

"Jupytext 
let g:jupytext_fmt = 'py'
let g:jupytext_style = 'hydrogen'

" Send cell to IronRepl and move to next cell.
" Depends on the text object defined in vim-textobj-hydrogen
" You first need to be connected to IronRepl
" [h takes you to previous cell
" ]h takes you to next cell
nmap ]x ctrih]h<CR><CR>

luafile $HOME/.config/nvim/plugins.lua

"Set %matplotlib qt 
"to display graphs in notebooks 
