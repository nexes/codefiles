" -------------------------plugins------------------------------
call plug#begin ("~/.vim/plugged")
Plug 'kyazdani42/nvim-web-devicons'
Plug 'tpope/vim-commentary'
Plug 'neovim/nvim-lspconfig'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'mhartington/formatter.nvim'
Plug 'cdelledonne/vim-cmake'

" ------------telescope requires neovim v >= 0.5----------------
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" -------------------------themes------------------------------
Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

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

" clear search highlights
nnoremap <silent> <leader>/ :nohl<CR>

" open and close terminal
nnoremap <leader>t :split +resize15 term://bash<CR> i
tnoremap <Esc> <C-\><C-n> :bd!<CR>

" ---------------------Plugin settings-------------------------
"  TODO: move over to lua file
source ~/.config/nvim/plugin-config/airline-settings.vim
source ~/.config/nvim/plugin-config/tree-settings.vim

luafile ~/.config/nvim/lua/telescope-config.lua
luafile ~/.config/nvim/lua/lsp-config.lua
luafile ~/.config/nvim/lua/lspsaga-config.lua
luafile ~/.config/nvim/lua/format-config.lua
luafile ~/.config/nvim/lua/tree-config.lua
