"========================================================
" Focused writing with Goyo + Spell check. Set Goyo to F2
"=======================================================
function! s:goyo_enter()
  MBEClose
  wincmd w
endfunction
noremap <F2> :Goyo

"==================================================
" Set mapping for Goyo and Natural Language 
"==================================================
autocmd! User GoyoEnter call <SID>goyo_enter()
set spelllang=en_us,es_es
set spellfile=$HOME/.config/nvim/en.utf-8.add 

"==================================================
" Lexical Config 
"==================================================
augroup lexical
  autocmd!
  autocmd BufRead,BufNewFile *.txt setlocal spell 
  autocmd BufRead,BufNewFile *.md setlocal spell 
  autocmd BufRead,BufNewFile *.tex setlocal spell 
  autocmd BufRead,BufNewFile *.txt call lexical#init()
  autocmd BufRead,BufNewFile *.\.md call lexical#init()
  autocmd BufRead,BufNewFile *.tex call lexical#init()
augroup END
let g:lexical#thesaurus = ['~/.config/nvim/words.txt', '~/.config/nvim/dict-es_ve/dictionaries/th_es_VE.dat']
let g:lexical#dictionary = ['~/.config/nvim/english-words/words.txt', '~/.config/nvim/dict-es_ve/dictionaries/es_VE.dic']

" ==================================================
" Useful Notes  
" ==================================================
" Suggestions  
" `z=` Find suggestions for bad words 
" `1z=` Use the first suggestion, without prompting
" <c-x-s> to find suggestions. (Insert Mode) 
" <c-n> go down suggestion
" <c-p> go up suggestion. 
" `zg` Mark as good word 

 
