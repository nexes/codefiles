call plug#begin ("~/AppData/Local/nvim/plugged")
Plug 'mbbill/undotree'          , {'on': ['UndotreeToggle']}
Plug 'scrooloose/nerdtree'      , {'on': ['NERDTreeToggle', 'NERDTreeFind']}
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'kdheepak/lazygit.nvim'    , {'branch': 'nvim-v0.4.3' }
Plug 'neovim/nvim-lsp'
Plug 'Shougo/deoplete.nvim'     , {'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete-lsp'
Plug 'easymotion/vim-easymotion'
Plug 'neoclide/coc.nvim'        , {'branch': 'release' }

"themes
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

filetype plugin indent on
syntax on
colorscheme hybrid

set guifont="Cascadia Code PL"

let mapleader = ","
set mouse=a

" coc setup
"
set nobackup
set hidden
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
"
" cod setup end

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
set ignorecase smartcase

set splitbelow
set splitright

set visualbell
set noerrorbells

set autoread

" ctrl forward slash. I don't know, vim is weird I guess
nnoremap <silent> <C-_> :Commentary<CR>
" save
nnoremap <C-s> :w<CR>
" NERD tree
nnoremap <C-b> :NERDTreeToggle<CR>

" Nerd tree
let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalUI=1
let g:NERDTreeIgnore=[]
let g:NERDTreeStatusLine=''
