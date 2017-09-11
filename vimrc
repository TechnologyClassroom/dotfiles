" Change color past 80 characters per line
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
" From Simon Howard at https://stackoverflow.com/questions/235439/vim-80-column-
"   layout-concerns
