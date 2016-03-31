" Cada vez que se guarde un fichero python, pasarle el comprobador de
" sintaxis.
autocmd BufWritePost *.py call Flake8()
