" To set vim to read this vimrc, type the following commands
"
"   export VIMINIT='source $MYVIMRC'
"   export MYVIMRC='home/jeatkins/vimConfig/.vimrc'
"



" Enable syntax highlighting
syntax enable

" Show Line Numbers
set number

" Sets tab width of 4 instead of 8. Also if editting a makefile, which 
" required tabs instead of spaces, do not replace tabs with spaces. Use
" actual tabs. 

set tabstop=4
set softtabstop=4 

let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
set noexpandtab
else
set expandtab
endif
