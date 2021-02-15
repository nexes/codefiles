scriptencoding utf-8

" -------------------------plugins------------------------------
call plug#begin ("~/.vim/plugged")
Plug 'kyazdani42/nvim-web-devicons'
Plug 'tpope/vim-commentary'
Plug 'kdheepak/lazygit.nvim'    , {'branch': 'nvim-v0.4.3' }
Plug 'neoclide/coc.nvim'        , {'branch': 'release' }
Plug 'cdelledonne/vim-cmake'

" we will be using fzf instead of telescope. 
" if you change your mind, uncomment all lua lines and telescope lines
"
" ------------telescope requires neovim v >= 0.5----------------
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
" ------------telescope requires neovim v >= 0.5----------------

" Plug 'Shougo/deoplete.nvim'     , {'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/deoplete-lsp'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'sbdchd/neoformat'

" -------------------------themes------------------------------
Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" -------------------------lua imports------------------------------
" lua require('telescopeconfig')


" -----------------------theme setup----------------------------
filetype plugin on

syntax on
set termguicolors
set background=dark
colorscheme gruvbox-material
let g:gruvbox_material_disable_italic_comment = 1

" ---------------------basic settings--------------------------
let g:cmake_generate_options = ["-DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE"]
" set leader key
nnoremap <Space> <Nop>
let g:mapleader="\<Space>"

" change comment to double forward slash
autocmd FileType c,cpp,cs,java,rust setlocal commentstring=//\ %s

" system clipboard
set clipboard^=unnamed,unnamedplus

set guifont="FiraCode Nerd Font"
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
" popup menu
set completeopt=menuone,noinsert,noselect
set shortmess+=c

" -------------------basic keybinding------------------------
" ctrl-s to save buffer
nnoremap <silent> <c-s> :<c-u>update<cr>        

" ctrl+/ to comment the line in normal and visual mode
nnoremap <silent> <C-_> :Commentary<CR>
vnoremap <silent> <C-_> :Commentary<CR>

" move to the previous and next buffer
nnoremap <silent> <c-h> :bp<Cr>
nnoremap <silent> <c-l> :bn<Cr>

" nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
" nnoremap <leader>bb <cmd>lua require('telescope.builtin').buffers()<cr>

" clear search highlights
nnoremap <silent> <leader>/ :nohl<CR>

" open and close terminal
nnoremap <leader>t :split +resize15 term://bash<CR> i
tnoremap <Esc> <C-\><C-n> :bd!<CR>

" coc extensions:
"   coc-clangd
"   coc-rust-analyzer
"   coc-explorer
"   coc-pairs
"   coc-fzf-preview
" ---------------------Plugin settings-------------------------
source ~/.config/nvim/plugin-config/coc-settings.vim            " coc settings and keybindings
source ~/.config/nvim/plugin-config/coc-explorer-settings.vim   " coc explorer settings
source ~/.config/nvim/plugin-config/airline-settings.vim        " aireline settings
source ~/.config/nvim/plugin-config/coc-fzf-settings.vim        " coc fzf-preview settings
"source ~/.config/nvim/plugin-config/neoformat-settings.vim      " settings for formating files
