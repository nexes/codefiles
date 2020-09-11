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

" ---------------------test for telescope---------------------
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-lua/telescope.nvim'
" ---------------------test for telescope---------------------

" -------------------------themes------------------------------
Plug 'sheerun/vim-polyglot'
Plug 'sainnhe/gruvbox-material'
Plug 'w0ng/vim-hybrid'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" -----------------------theme setup----------------------------
filetype plugin indent on
autocmd FileType c,cpp,cs,java,rust setlocal commentstring=//\ %s

syntax on
set termguicolors
set background=dark

" colorscheme hybrid
let g:gruvbox_material_background='hard'
let g:gruvbox_material_menu_selection_background = 'blue'
let g:gruvbox_material_diagnostic_line_highlight = 1
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material

" ---------------------basic settings--------------------------
" set leader key
" let g:mapleader=','
nnoremap <Space> <Nop>
let g:mapleader="\<Space>"

" system clipboard
set clipboard^=unnamed,unnamedplus

set guifont="Cascadia Code PL"
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

nnoremap <silent> <leader>/ :nohl<CR>           " clear search highlight

" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O

" ---------------------Plugin settings-------------------------
source ~/.config/nvim/plugin-config/coc-settings.vim            " coc settings and keybindings
source ~/.config/nvim/plugin-config/coc-explorer-settings.vim   " coc explorer settings
source ~/.config/nvim/plugin-config/coc-fzf-settings.vim        " coc fzf-preview settings
source ~/.config/nvim/plugin-config/airline-settings.vim        " aireline settings

