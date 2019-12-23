" To set vim to read this vimrc, type the following commands in a gnu/linux environment
"
"   export VIMINIT='source $MYVIMRC'
"   export MYVIMRC='home/jeatkins/vimConfig/.vimrc'
"
" To set vim to read this vimrc in a windows environment, type the following commands in windows
" powershell. This assumes the git 
"   cd {\Path\To\Git\Repo}\vimConfig
" 	cp .\.vimrc {Path\To\User\Home}\_vimrc 
"
"   
"


" Enable syntax highlighting
syntax enable

" Show Line Numbers
set number

" Set the colorscheme for vim
colorscheme industry

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
