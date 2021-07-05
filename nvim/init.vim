" load current vimrc file
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc

" nvim-specific configs
if has('nvim')
    lua require('gitsigns').setup()
endif
