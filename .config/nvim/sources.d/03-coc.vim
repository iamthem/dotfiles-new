"==================================================
" Tab for trigger completion 
"==================================================
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"==================================================
"  <CR> to confirm completion 
" `<C-g>u` means break undo chain at current position.
"==================================================
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

"==================================================
" Navigate diagnostics with `[g`, `]g`
"==================================================
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

"==================================================
" GoTo Code Navigation
"==================================================
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"==================================================
" K to Show documentation  
"==================================================
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
nnoremap <silent> K :call <SID>show_documentation()<CR>

"==================================================
" Symbol Ops 
"==================================================
autocmd CursorHold * silent call CocActionAsync('highlight') " Highlight symbol + references when holding cursor
" Smart symbol renaming 
nmap <leader>rn <Plug>(coc-rename)          

"==================================================
" Formatting 
"==================================================
xmap <leader>F  <Plug>(coc-format-selected)
nmap <leader>F  <Plug>(coc-format-selected)

"==================================================
" Code Action 
"==================================================
" Applying codeAction to the selected region.
xmap <leader>a  <Plug>(coc-codeaction-selected)   
nmap <leader>a  <Plug>(coc-codeaction-line)
" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)     
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)    

"==================================================
" Snips 
"==================================================
" Use <C-n> for select text for visual placeholder of snippet.
vmap <C-n> <Plug>(coc-snippets-select)    
let g:coc_snippet_next = '<c-n>'          " Use <C-n> for jump to next placeholder 
let g:coc_snippet_prev = '<c-p>'          " Use <C-p> for jump to previous placeholder

"==================================================
" CocList  
"==================================================
" Show commands.
nnoremap <silent><nowait> <leader>c  :<C-u>CocList commands<cr>     
" Symbols in curr doc.
nnoremap <silent><nowait> <leader>o  :<C-u>CocList outline<cr>      
" Symbols in workspace 
nnoremap <silent><nowait> <leader>s  :<C-u>CocList -I symbols<cr>   

"==================================================
" Loglevel
"==================================================
let $NVIM_COC_LOG_LEVEL = 'info'

"==================================================
" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server. 
"==================================================
nmap <silent> <C-r> <Plug>(coc-range-select)
xmap <silent> <C-r> <Plug>(coc-range-select)

"==================================================
" Mappings for CoCList
"==================================================
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
" Display Runtime Coc log 
nnoremap <silent><nowait> <space>l  :<C-u>CocInfo<CR>
