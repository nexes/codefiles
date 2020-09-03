scriptencoding utf-8

call plug#begin ("~/.vim/plugged")

Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'kdheepak/lazygit.nvim'    , {'branch': 'nvim-v0.4.3' }
Plug 'neovim/nvim-lsp'
Plug 'Shougo/deoplete.nvim'     , {'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete-lsp'
Plug 'neoclide/coc.nvim'        , {'branch': 'release' }

" -----------------test for telescope-----------------
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-lua/telescope.nvim'
" -----------------test for telescope-----------------

"themes
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" ---------------------basic settings--------------------------
filetype plugin indent on
syntax on
colorscheme hybrid

" set leader key
" let g:mapleader=','
nnoremap <Space> <Nop>
let g:mapleader="\<Space>"

set guifont="Cascadia Code PL"
set nobackup
set hidden
set nowritebackup
set mouse=a
set belloff=all
set cmdheight=2
set signcolumn=yes

set expandtab
set tabstop=4
set softtabstop=4
set shiftround
set shiftwidth=4

set nowrap
set number
set noshowmode
set secure
set cursorline
set nocursorcolumn
set lazyredraw
set showmatch
set title
set ignorecase 
set smartcase
set splitright
set splitbelow
set noerrorbells
set autoread

set updatetime=1000

" -------------------basic keybinding------------------------
nnoremap <silent> <c-s> :<c-u>update<cr>        " ctrl-s to save buffer
nnoremap <silent> <C-_> :Commentary<CR>         " <c-/>. I don't know, vim is weird I guess. comment line
vnoremap <silent> <C-_> :Commentary<CR>         " <c-/>. I don't know, vim is weird I guess. comment selected


" ---------------------Plugin settings-------------------------
source ~/.config/nvim/plugin-config/coc-settings.vim            " coc settings and keybindings
source ~/.config/nvim/plugin-config/coc-explorer-settings.vim   " coc explorer settings
source ~/.config/nvim/plugin-config/coc-fzf-settings.vim        " coc fzf-preview settings
source ~/.config/nvim/plugin-config/airline-settings.vim        " aireline settings

