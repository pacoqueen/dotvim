" Cada vez que se guarde un fichero python, pasarle el comprobador de
" sintaxis.
"autocmd BufWritePost *.py call Flake8()

" Lo mismo pero con syntastic y alguna configuración recomendada más.
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Esto es para ignorar los errores de imports que no están al principio.
let g:syntastic_python_flake8_args = '--ignore=E402'

" Para navegar entre los errores con el teclado:
map <F7> :lnext<CR>
map! <F7> <ESC>:lnext<CR>i
map <F6> :lprev<CR>
map! <F7> <ESC>:lprev<CR>i

" Eliminar los espacios a final de línea para cumplir PEP8
autocmd BufWritePre * :%s/\s\+$//e
