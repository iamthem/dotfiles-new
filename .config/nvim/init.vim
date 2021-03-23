" ==================================================
" Source the files ~/.config/nvim/sources.d/
" ==================================================
for f in split(glob('~/.config/nvim/sources.d/*.vim'), '\n')
    exe 'source' f
endfor

