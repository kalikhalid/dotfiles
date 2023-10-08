set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set scrolloff=7
inoremap jk <esc>

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'srcery-colors/srcery-vim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }


set encoding=UTF-8

call plug#end()

set t_Co=257

set termguicolors
colorscheme srcery
set background=dark
syntax enable

let g:NERDTreeWinSize=18

"Nerd tree"
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

let g:lightline = {
      \ 'colorscheme': 'srcery',
      \ }

" Telescope
nnoremap ,f <cmd>Telescope find_files<cr>
nnoremap ,g <cmd>Telescope live_grep<cr>

lua << EOF
require('telescope').load_extension('fzf')
EOF
