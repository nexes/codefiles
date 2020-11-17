scriptencoding utf-8

" -------------------------plugins------------------------------
call plug#begin ("~/.vim/plugged")
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'kdheepak/lazygit.nvim'    , {'branch': 'nvim-v0.4.3' }
" Plug 'neovim/nvim-lsp'
Plug 'Shougo/deoplete.nvim'     , {'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete-lsp'
Plug 'neoclide/coc.nvim'        , {'branch': 'release' }
Plug 'cdelledonne/vim-cmake'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sbdchd/neoformat'

" ---------------------test for telescope---------------------
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-lua/telescope.nvim'
" ---------------------test for telescope---------------------

" -------------------------themes------------------------------
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" -----------------------theme setup----------------------------
filetype plugin on
autocmd FileType c,cpp,cs,java,rust setlocal commentstring=//\ %s

syntax on
set termguicolors
set background=dark
" colorscheme nord
colorscheme hybrid_material

" ---------------------basic settings--------------------------
" set leader key
" let g:mapleader=','
nnoremap <Space> <Nop>
let g:mapleader="\<Space>"

" system clipboard
set clipboard^=unnamed,unnamedplus

set guifont="Fira Code Regular"
set nobackup
set hidden
set nowritebackup
set noswapfile
set mouse=a
set belloff=all
set cmdheight=2
set signcolumn=yes

set expandtab
set tabstop=4
set softtabstop=4
set shiftround
set shiftwidth=4
set autoindent
set smartindent

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
set inccommand=nosplit

" -------------------basic keybinding------------------------
nnoremap <silent> <c-s> :<c-u>update<cr>        " ctrl-s to save buffer
nnoremap <silent> <C-_> :Commentary<CR>         " <c-/>. I don't know, vim is weird I guess. comment line
vnoremap <silent> <C-_> :Commentary<CR>         " <c-/>. I don't know, vim is weird I guess. comment selected

nnoremap <silent> <c-h> :bp<Cr>                 " move to the previous buffer
nnoremap <silent> <c-l> :bn<Cr>                 " move to the next buffer

nnoremap <silent> <leader>/ :nohl<CR>           " clear search highlight

" ----------------ugly keybinding for certain file types only--------------------
" TODO move into ftplugin
" autocmd FileType c,cpp,cs,java,rust,json,javascript,typescript inoremap ( ()<left>
" autocmd FileType c,cpp,cs,java,rust,json,javascript,typescript inoremap [ []<left>
" autocmd FileType c,cpp,cs,java,rust,json,javascript,typescript inoremap { {}<left>
autocmd FileType c,cpp,cs,java,rust,json,javascript,typescript inoremap {<CR> {<CR>}<ESC>O

" ---------------------Plugin settings-------------------------
source ~/.config/nvim/plugin-config/coc-settings.vim            " coc settings and keybindings
source ~/.config/nvim/plugin-config/coc-explorer-settings.vim   " coc explorer settings
source ~/.config/nvim/plugin-config/coc-fzf-settings.vim        " coc fzf-preview settings
source ~/.config/nvim/plugin-config/airline-settings.vim        " aireline settings
source ~/.config/nvim/plugin-config/neoformat-settings.vim      " settings for formating files

