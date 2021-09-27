"Execute python script on F1
autocmd FileType python map <buffer> <C-P> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" REPL Config
autocmd FileType python nmap <C-s> :IronRepl<CR>
autocmd FileType python nmap <C-t>    <Plug>(iron-send-motion)
autocmd FileType python vmap <C-v>    <Plug>(iron-visual-send)
autocmd FileType python nmap <C-r>    <Plug>(iron-repeat-cmd)
autocmd FileType python nmap <LocalLeader>l    <Plug>(iron-send-line)
autocmd FileType python nmap <C-<CR>> <Plug>(iron-cr)
autocmd FileType python nmap <C-z>    <plug>(iron-interrupt)
autocmd FileType python nmap <C-q>    <Plug>(iron-exit)
autocmd FileType python nmap <C-c>    <Plug>(iron-clear)

let g:iron_map_extended = 0

"Host prog
let g:python3_host_prog = "/usr/bin/python3"

"Jupytext 
let g:jupytext_fmt = 'py'
let g:jupytext_style = 'hydrogen'

" Send cell to IronRepl and move to next cell.
" Depends on the text object defined in vim-textobj-hydrogen
" You first need to be connected to IronRepl
autocmd FileType python nmap <LocalLeader>cc ctrih]h<CR><CR> 
autocmd FileType python nmap <LocalLeader>n ]h<CR>
autocmd FileType python nmap <LocalLeader>N [h<CR>

luafile $HOME/.config/nvim/plugins.lua

"Set %matplotlib qt 
"to display graphs in notebooks 

" Create new R chunk 
autocmd filetype python inoremap <C-c> # %%<CR><C-o>x
