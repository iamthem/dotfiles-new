"Rg configuration
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --hidden --ignore-case --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
  \           : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%:hidden', '?'),
  \   <bang>0)

"==================================================
" Key mappings 
"==================================================
" Search project file names 
nnoremap <silent> <leader>f :CocCommand fzf-preview.ProjectFiles<cr>
" Search curr dir file names 
nnoremap <silent> <leader>d :CocCommand fzf-preview.DirectoryFiles<cr>
" Search lines in open buffers
nnoremap <silent> <leader>l :CocCommand fzf-preview.BufferLines<cr>
" Search buffer file names 
nnoremap <silent> <leader>b :CocCommand fzf-preview.AllBuffers<cr>
" Search history 
nnoremap <silent> <leader>hi :History:<cr>
" Search for help entries 
nnoremap <silent> <leader>he :Helptags<cr>
" Search for words in curr directory 
nnoremap <silent> <C-g> :Rg<cr>
" Git actions (wow)
nnoremap <silent> <leader>g :CocCommand fzf-preview.GitActions<cr>

if has('nvim')
    tnoremap <expr> <A-r> '<C-\><C-N>"'.nr2char(getchar()).'pi'
endif

vmap <c-f> "hy:Rg<Enter><A-r>h

"==================================================
" Fzf preview setting 
"==================================================
let g:fzf_preview_command = 'bat --color=always --style=grid --theme=TwoDark {-1}'
