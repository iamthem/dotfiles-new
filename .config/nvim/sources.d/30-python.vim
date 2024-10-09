"Execute python script on F1
autocmd FileType python map <buffer> <C-P> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>


" Create new R chunk 
autocmd filetype python inoremap <C-c> # %%<CR><C-o>x

"Host prog
let g:python3_host_prog = "/Users/junaikin/opt/anaconda3/bin/python"

" REPL Config
autocmd FileType python nmap <C-s> :IronRepl<CR>

"Set %matplotlib qt 
"to display graphs in notebooks 

luafile $HOME/.config/nvim/plugins.lua

autocmd FileType python let b:coc_root_patterns = ['.git', '.env', 'venv', '.venv', 'setup.cfg', 'setup.py', 'pyproject.toml', 'pyrightconfig.json']
