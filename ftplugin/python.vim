" Cada vez que se guarde un fichero python, pasarle el comprobador de
" sintaxis.
autocmd BufWritePost *.py call Flake8()

" Eliminar los espacios a final de línea para cumplir PEP8
autocmd BufWritePre * :%s/\s\+$//e
