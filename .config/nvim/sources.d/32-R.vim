"set rmarkdown file type for safety
au BufNewFile,BufRead *.Rmd set filetype=rmd

let rrst_syn_hl_chunk = 1
let rmd_syn_hl_chunk = 1

"Latex output
let R_latexcmd = ['xelatex']
let R_texerr = 1

" First use tab and shift tab to browse the popup menu and use 
" enter to expand:
" inoremap ncm2_ultisnips#expand_or("<tab>”, 'n')
inoremap PP %>%
let R_assign_map = "--"

"" make R vertical split at start
let R_rconsole_width = 0 
let R_min_editor_width = 110 
let R_rconsole_height = 15

""" don't open pdf by default
let R_openpdf = 1

"let rout_follow_colorscheme = 1
let rout_color_input    = 'ctermfg=247'
let rout_color_normal   = 'ctermfg=39'
let rout_color_number   = 'ctermfg=214'
let rout_color_date     = 'ctermfg=43'
let rout_color_true     = 'ctermfg=25'
let rout_color_false    = 'ctermfg=130'
let rout_color_constant = 'ctermfg=71'
let rout_color_string   = 'ctermfg=79'
let rout_color_error    = 'ctermfg=196'
let rout_color_warn     = 'ctermfg=200'
let rout_color_index    = 'ctermfg=186'

let g:Rout_more_colors = 1

" Create new R chunk 
autocmd filetype rmd inoremap <C-c> ```{r}```<Left><Left><Left><CR><C-o>O<tab>
