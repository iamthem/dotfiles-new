"Execute python script on F1
autocmd FileType python map <buffer> <C-P> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>

"Jupytext 
let g:jupytext_fmt = 'py'
let g:jupytext_style = 'hydrogen'

" Create new R chunk 
autocmd filetype python inoremap <C-c> # %%<CR><C-o>x

"Host prog
let g:python3_host_prog = "/home/ubuntu/anaconda3/envs/pytorch_env/bin/python3"

" REPL Config
autocmd FileType python nmap <C-s> :IronRepl<CR>

"Set %matplotlib qt 
"to display graphs in notebooks 

luafile $HOME/.config/nvim/plugins.lua
