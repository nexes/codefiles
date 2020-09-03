" config for coc-fzf-preview

nnoremap <silent> <leader>b :CocCommand fzf-preview.Buffers<CR>                 " list buffers
nnoremap <silent> <leader>g :CocCommand fzf-preview.GitFiles<CR>                " list git files
nnoremap <silent> <C-d> :CocCommand fzf-preview.DirectoryFiles<CR>          " list directory files

nnoremap <silent> <C-f> :CocCommand fzf-preview.Lines --add-fzf-arg=--exact<CR>             " search in currect file
nnoremap <silent> <C-g> :CocCommand fzf-preview.ProjectGrep --add-fzf-arg=--exact . <Cr>    " search in project
