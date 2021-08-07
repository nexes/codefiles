" -------------------------plugins------------------------------
call plug#begin ("~/.vim/plugged")
Plug 'kyazdani42/nvim-web-devicons'
Plug 'tpope/vim-commentary'
Plug 'neovim/nvim-lspconfig'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mhartington/formatter.nvim'
Plug 'cdelledonne/vim-cmake'
Plug 'tmsvg/pear-tree'

" -------------------------themes------------------------------
Plug 'arzg/vim-corvine'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" -----------------------theme setup----------------------------
filetype plugin on
syntax on
set termguicolors

colorscheme corvine

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
set cmdheight=1
set signcolumn=yes
set colorcolumn=90

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
" set cursorline
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

" setup fzf window to attach at the bottom
let g:fzf_layout = { 'down': '25%' }

" ------------------Search Functions------------------
set grepprg=rg\ --vimgrep\ --smart-case\ --pretty\ --follow

" search for the keyword in all currently open buffers
function! SearchFunc(word)
    " remember current buffer to later return to it
    let curr_buff = bufnr("%")

    " clear the quicklist
    call setqflist([])

    execute 'silent bufdo grepadd! '.a:word.' %'
    execute 'buffer '.curr_buff
    execute 'copen'
endfunction

command! -nargs=+ Search call SearchFunc(<q-args>)
command! -nargs=+ SearchAll execute 'silent grep! <args>' | copen

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

" find files with fzf
nnoremap <silent> <c-p> :Files<cr>

" ---------------------Plugin settings-------------------------
"  TODO: move over to lua file
source ~/.config/nvim/plugin-config/airline-settings.vim
source ~/.config/nvim/plugin-config/tree-settings.vim

" luafile ~/.config/nvim/lua/telescope-config.lua
luafile ~/.config/nvim/lua/lsp-config.lua
luafile ~/.config/nvim/lua/lspsaga-config.lua
luafile ~/.config/nvim/lua/format-config.lua
luafile ~/.config/nvim/lua/tree-config.lua
