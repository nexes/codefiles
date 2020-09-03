" airline settings

nnoremap <silent> <c-h> :bp<Cr>
nnoremap <silent> <c-l> :bn<Cr>

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline#extensions#tabline#buffer_nr_show=1

let g:airline_section_c='%t'
let g:airline_section_z=''

let g:aireline#extensions#coc#enabled=1
