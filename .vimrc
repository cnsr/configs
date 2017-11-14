set nocompatible
set guioptions+=T

" autobrackets
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O 
" encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set shell=zsh

filetype on
filetype plugin on

set backspace=indent,eol,start

set whichwrap+=<,>h,l,[,]

set autoindent
set smartindent

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
let python_highlight_all = 1

" autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" copy/paste hotkeys
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

set nobackup
set noswapfile

set textwidth=120

set t_Co=256
syntax enable
" let g:solarized_termcolors=256
" set background=dark
" colorscheme solarized
colorscheme zenburn
set ts=4 sw=4 noet

set number
set showmatch
" set comments=s1:/*,mb:\ *,elx:\ */

" omnicomplete

imap <F2> <ESC>:w<CR>i

set list
set listchars=tab:→→,trail:⋅

" change splits on ctrl+arrows
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>

" python-syntax
let python_highlight_all = 1

" tabs for html, css adn js
autocmd Filetype html setlocal sts=0 sw=4 ts=4  noexpandtab
autocmd Filetype css setlocal ts=2 sw=2 noexpandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 noexpandtab

" turns off tab highlight for html, css adn js
au BufNewFile,BufRead *.html set nolist
au BufNewFile,BufRead *.css set nolist
au BufNewFile,BufRead *.js set nolist

" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" Tabulation
vmap <Tab> >gv
vmap <S-Tab> <gv
" for insert mode
inoremap <S-Tab> <C-d>

" comment out multiple lines
vnoremap <C-n> :norm i#<ENTER>
vnoremap <C-m> :norm x<ENTER>
