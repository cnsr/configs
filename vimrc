set nocompatible
set number
filetype off

" start plugins
call plug#begin('~/.vim/plugged')
" call plug#begin(stdpath('data'))
" list the plugins

" VIM enhancements
Plug 'ciaranm/securemodelines'

" GUI enhancements
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug 'machakann/vim-highlightedyank'

" FZF
Plug 'airblade/vim-rooter'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install -all'}
Plug 'junegunn/fzf.vim'

" other
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" autocomplete
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

" COCK
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" dont forget to install coc-pyright

" theme
Plug 'rktjmp/lush.nvim'
Plug 'chriskempson/base16-vim'

" Git signs
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'

" end of pluginst list
call plug#end()
filetype plugin indent on    " required

set completeopt=noinsert,menuone,noselect

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
set t_Co=255

set termguicolors
set guicursor = 
autocmd OptionSet guicursor noautocmd set guicursor=

nnoremap <C-f> :NERDTreeToggle<CR>
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p"

" Add your own mapping. For example:
" nmap <buffer> <CR> :
" noremap <silent> <C-F> :call ToggleNetrw()<CR>
" this shit doesn't work due ot some default bindings
" nmap <silent> <C-> :vertical resize -5<CR>
" nmap <silent> <C-> :vertical resize +5<CR>

" set max line length to 88
let g:ale_python_flake8_options = '--max-line-length=119'
" disable since COCK is used
" let g:ale_disable_lsp = 1

" COCK binds
nmap <silent> gd <Plug>(coc-definition)

"change theme
colorscheme base16-atelier-forest
