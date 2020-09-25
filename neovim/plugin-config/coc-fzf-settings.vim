" config for coc-fzf-preview

" use bat instead of cat, recommended by coc-fzf-preview
let g:fzf_preview_command='bat --theme=1337 --color=always --plain {-1}'

" use ripgrep since I have it installed pass command line args here
let g:fzf_preview_filelist_command = 'rg --files --hidden --follow --no-messages -g \!"* *"'

" set devicons in the preview window
let g:fzf_preview_use_dev_icons=1

nnoremap <silent> <leader>b :CocCommand fzf-preview.Buffers<CR>             " list buffers
nnoremap <silent> <leader>g :CocCommand fzf-preview.GitFiles<CR>            " list git files
nnoremap <silent> <C-d> :CocCommand fzf-preview.DirectoryFiles<CR>          " list directory files

nnoremap <silent> <C-f> :CocCommand fzf-preview.Lines --add-fzf-arg=--exact<CR>     " search in currect file

" in coc-settings we are setting this keybinding to CocSearch
" nnoremap <silent> <C-g> :CocCommand fzf-preview.ProjectGrep --add-fzf-arg=--exact . <Cr>    " search in project
