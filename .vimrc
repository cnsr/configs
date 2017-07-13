set nocompatible

set guioptions+=T

"autobrackets
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O 
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

set shell=bash

set backspace=indent,eol,start

set whichwrap+=<,>h,l,[,]

set autoindent
set smartindent

set tabstop=4
set shiftwidth=4
set expandtab

set textwidth=120

set t_Co=256
syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
set ts=4 sw=4 noet

set number
set showmatch
set comments=s1:/*,mb:\ *,elx:\ */

"omnicomplete

imap <F2> <ESC>:w<CR>i

autocmd filetype cpp nnoremap <F7> :!g++ % -ggdb -o %:r <CR>
autocmd filetype cpp nnoremap <F8> :!g++ % -ggdb -o %:r -lncurses<CR>
autocmd filetype cpp nnoremap <F5> :!g++ % -ggdb -o %:r && ./%:r <CR>


