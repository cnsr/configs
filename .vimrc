call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'

" Plug 'SirVer/ultisnips' | 
Plug 'honza/vim-snippets' | Plug 'mxw/vim-jsx'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'


" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Initialize plugin system
call plug#end()
set nocompatible
set guioptions+=T
set cursorline

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
" colorscheme zenburn
" colorscheme apprentice
" colorscheme srcery
" colorscheme gruvbox
set background=dark
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
autocmd Filetype js setlocal ts=4 sw=4 sts=0 et
autocmd Filetype tsx setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype jsx setlocal ts=4 sw=4 sts=0 et
autocmd Filetype cpp setlocal ts=4 sw=4 sts=4 et
autocmd Filetype c setlocal ts=4 sw=2 sts=4 et
autocmd Filetype h setlocal ts=4 sw=4 sts=4 et
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" turns off tab highlight for html, css adn js
au BufNewFile,BufRead *.html set nolist
au BufNewFile,BufRead *.css set nolist
au BufNewFile,BufRead *.js set nolist
au BufNewFile,BufRead *.jsx set nolist
au BufNewFile,BufRead *.tsx set nolist


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

" resize horzontal split window
nmap <C-S-Down> <C-W>-<C-W>-
nmap <C-S-Up> <C-W>+<C-W>+
" resize vertical split window
nmap <C-S-Right> <C-W>><C-W>>
nmap <C-S-Left> <C-W><<C-W><

" Unbind Q and F1 and shift+K
nnoremap Q <nop>
nnoremap <F1> <nop>
map <S-k> <Nop>

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

set langmap='йцукенгшщзхїфівапролджєячсмитьбю~ЙЦУКЕHГШЩЗХЇФІВАПРОЛДЖЄЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

hi CursorLine term=bold cterm=bold guibg=Grey40

" bind NerdTreeToggle
nmap <C-f> :NERDTreeToggle<CR>

