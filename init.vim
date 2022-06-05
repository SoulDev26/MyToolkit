set number
set relativenumber
set noswapfile
set scrolloff=7

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set fileformat=unix
filetype indent on

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'kaicataldo/material.vim', {'branch': 'main'}
Plug 'ayu-theme/ayu-vim'

call plug#end()

colorscheme gruvbox

nnoremap <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

nnoremap <silent> <A-,> :BufferPrevious<CR>
nnoremap <silent> <A-.> :BufferNext<CR>
nnoremap <silent> <A-c> :BufferClose<CR>

nnoremap <C-Left> :b<CR>
nnoremap <C-Right> :w<CR>

nmap <C-Left> b
nmap <C-Right> w


set mouse+=a

if (has('termguicolors'))
	set termguicolors
endif
