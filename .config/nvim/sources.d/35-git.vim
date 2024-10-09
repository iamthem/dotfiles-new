"==================================================
" Gitgutter 
"==================================================
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '➜'
let g:gitgutter_sign_removed = '✘' 
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified_removed = ''
let g:gitgutter_override_sign_column_highlight = 1

nmap gj <Plug>(GitGutterNextHunk)
nmap gk <Plug>(GitGutterPrevHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)
nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ggt :GitGutterToggle<CR>

"==================================================
" Vimagit + Fugitive
"==================================================
nnoremap gm :Magit<CR>
nnoremap gP :Git push 

" Git add current file 
nnoremap gaf :Gw<CR>  

nnoremap gds :Gvdiffsplit!<CR>  

" Git diff shortcuts
" Choose target branch (i.e. current branch) version
nnoremap dfgh :diffget //2<CR>    
" Choose merge branch version
nnoremap dfgm :diffget //3<CR>    
" Git diff 
nnoremap gdf :Gdiff                
