"==================================================
" Folding 
"==================================================
noremap <space> za
vnoremap <space> zf
let g:fastfold_fold_movement_commands = ['zj', 'zk']
let g:xml_syntax_folding = 1

"==================================================
" Lining up  
"==================================================
nnoremap <LocalLeader>t :Tabularize 
vnoremap <LocalLeader>t :Tabularize 

"==================================================
" Buffer cyclying 
"==================================================
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

"==================================================
" Search 
"==================================================
" Search highlighted word with //
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR> 
nnoremap <leader>/ :noh<CR>

"==================================================
" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
"==================================================
inoremap <c-c> <ESC>

"==================================================
" NerdTree (open and close)
"==================================================
map <C-n> :NERDTreeToggle<CR>       
nnoremap <C-t> :UndotreeToggle<CR> 

"==================================================
" Diff shortcuts
"==================================================
nnoremap dfu :diffupdate<CR>  
nnoremap dfp :diffput<CR>
nnoremap dfg :diffget<CR>

"==================================================
" Easy motion 
"==================================================
nmap mf <Plug>(easymotion-f)
nmap mF <Plug>(easymotion-F)
nmap mw <Plug>(easymotion-w)
nmap mb <Plug>(easymotion-b)
nmap ms <Plug>(easymotion-s)

"==================================================
" Sneak
"==================================================
" Move to next sneak with n
nmap <expr> n sneak#is_sneaking() ? '<Plug>Sneak_;' : 'n'    

"==================================================
" Terminal mode  
"==================================================
"Exit terminal with <Esc>
tnoremap <Esc> <C-\><C-n>       
