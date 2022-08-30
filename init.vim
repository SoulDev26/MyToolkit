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
Plug 'jiangmiao/auto-pairs'

Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'kaicataldo/material.vim', {'branch': 'main'}
Plug 'ayu-theme/ayu-vim'

call plug#end()

let g:airline#extensions#tabline#enabled = 1

colorscheme gruvbox

"inoremap jk <esc>


inoremap <silent><expr> <S-CR> coc#pum#visible() ? coc#pum#cancel() : "\<S-CR>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

nnoremap <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

nnoremap <silent> <A-,> <CMD>BufferPrevious<CR>
nnoremap <silent> <A-.> <CMD>BufferNext<CR>
nnoremap <silent> <A-c> <CMD>BufferClose<CR>
nnoremap <silent> <A-<> <CMD>BufferMovePrevious<CR>
nnoremap <silent> <A->> <CMD>BufferMoveNext<CR>

nnoremap <C-Left> <CMD>b<CR>
nnoremap <C-Right> <CMD>w<CR>

nnoremap <esc> <CMD>noh<return><esc>

nmap <C-Left> b
nmap <C-Right> w

let g:AutoPairsShortcutToggle = ''

set mouse+=a

if (has('termguicolors'))
	set termguicolors
endif
