" UTF-8 por defecto siempre.
set encoding=utf-8
" Y nada de CR+LF:
set fileformat=unix
" Para .tex y demás, corrector español e inglés.
set spelllang=es,en
au FileType tex exe ":set spell"
" Búsqueda incremental. No puedo vivir sin ella:
set incsearch
" Y resaltadas:
set hlsearch
" Las líneas muy largas ralentizan demasiado al colorearse:
set synmaxcol=2048
" Y resaltado de sintaxis por defecto:
syntax on
" Backup y temporales fuera de mi vista:
set backupdir=~/.vim/backup/,/tmp
set directory=~/.vim/swap/,/tmp
set undodir=~/.vim/undo,/tmp
" Ver la tecla "leader" a la derecha de la línea de comandos cuando es pulsada:
set showcmd
" Tabulador=4 espacios, indentación también:
set sw=4
set tabstop=4
set shiftwidth=4
set smarttab
set smartindent
set expandtab

" Plugins (vim-plug)
call plug#begin('~/.vim/plugged')
    " https://github.com/junegunn/vim-plug
    " Brief help
    " :PlugInstall [name ...] [#threads]    Install plugins
    " :PlugUpdate [name ...] [#threads]     Install or update plugins
    " :PlugClean[!]    Remove unused directories (bang version will clean without prompt)
    " :PlugUpgrade    Upgrade vim-plug itself
    " :PlugStatus     Check the status of plugins
    " :PlugDiff    Examine changes from the previous update and the pending changes
    " :PlugSnapshot[!] [output path]    Generate script for restoring the current snapshot of the plugins

    "airline: lean & mean status/tabline for vim that's light as air
    Plug 'vim-airline/vim-airline'
    " ctrlp: fuzzy file search
    Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

" Fuente para soportar los símbolos de airlne
let g:airline_powerline_fonts = 1
set guifont=Monaco\ for\ Powerline\ 10

" Ctrl+P para... bueno, ctrlp. Je.
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Sesiones en código Geotexan, que es donde lo necesito actualmente:
let g:session_directory = '~/Geotexan/src/ginn'
let g:session_default_to_last = 1
let g:session_autosave = 1
let g:session_autoload = 1

