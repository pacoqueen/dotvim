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
" Ver la tecla "leader" (\) a la derecha de la línea de comandos cuando
" es pulsada:
set showcmd
" Borrar el resaltado de la última búsqueda hasta que volvamos a buscar:
nnoremap <Leader>/ :nohlsearch<CR>
" Tabulador=4 espacios, indentación también:
set sw=4
set tabstop=4
set shiftwidth=4
set smarttab
set smartindent
set expandtab
" Números de línea, sí, por favor:
set number
" Ancho de 80 columnas es lo suyo:
set colorcolumn=80

" ----------------------
"   Plugins (vim-plug)
" ----------------------
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
    "ctrlp: fuzzy file search
    Plug 'ctrlpvim/ctrlp.vim'
    "sierra: A (dark) Vim Colorscheme
    Plug 'AlessandroYorba/Sierra'
    "vim-session: Extended session management for Vim (:mksession on steroids)
    Plug 'xolox/vim-session'
    "vim-misc: Necesario para vim-session
    Plug 'xolox/vim-misc'
    "ultisnips: snippets
    Plug 'SirVer/ultisnips'
    "vim-snippets: algunos snippets "precocinados". Por defecto: <tab, ^j, ^k>
    Plug 'honza/vim-snippets'
    "rainbow: Rainbow Parentheses Improved
    Plug 'luochen1990/rainbow'
    "YouCompleteMe: Dudaba entre YCM y jedi-vim. YCM no necesita teclas.
    Plug 'Valloric/YouCompleteMe'
    "supertab: Para evitar que YCM capture el tab de UltiSnips
    Plug 'ervandew/supertab'
    "vim-flake8: syntax and style (PEP8) checker. Por defecto: <F7>
    "Plug 'nvie/vim-flake8'
    "syntastic: No redimiensiona ventanas como el vim-flake8
    "Plug 'scrooloose/syntastic'
    "AsynchronousLintEngine: Al final el syntastic no me va con python3
    Plug 'w0rp/ale'
    "vim-autopep8: Necesita tener instalado python-autopep8. Por defecto: <F8>
    Plug 'tell-k/vim-autopep8'
    "vim-signature: plugin para poner y ver las marcas. <mx, dmx, m,, m., ...>
    Plug 'kshenoy/vim-signature'
    "tagbar: Class-browser para python. Por defecto: <F8>, cambiado a <F9>
    Plug 'majutsushi/tagbar'
    "vim-sensible: A universal set of defaults that everyone can agree on.
    Plug 'tpope/vim-sensible'
    " colorscheme kalisi
    Plug 'freeo/vim-kalisi'
    " colorscheme SummerFruit
    Plug 'vim-scripts/summerfruit256.vim'
    " vim-virtualenv:  Vim plugin for working with python virtualenvs
    Plug 'jmcantrell/vim-virtualenv'
    " django-plus.vim: Sintaxis templates django, completion, etc.
    Plug 'tweekmonster/django-plus.vim'
    " colorscheme Solarized
    Plug 'altercation/vim-colors-solarized'
    " colorscheme Night Owl (tema oscuro)
    Plug 'haishanh/night-owl.vim'
    " vim-searchindex: Para resaltar todos los resultados al buscar y el total.
    Plug 'google/vim-searchindex'
    " editorconfig-vim: Se está poniendo de moda el [.editorconfig](http://editorconfig.org)
    Plug 'editorconfig/editorconfig-vim'
    " isort: Organiza los imports en python para ordenarlos correctamente.
    Plug 'fisadev/vim-isort'
    " PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run install script
    " ...Y algunos comandos ya precocinados: Files, GFiles, GFiles?, Buffers,
    " Colors, Ag, Lines, BLines, Tags, BTags, Marks... ^t, ^x y ^v para abrir
    " en nuevo tab, split o vertical. Ver https://github.com/junegunn/fzf.vim
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    " Mesonic para sintaxis, :MesonInit, :make, errores en quickfix...
    Plug 'igankevich/mesonic'
    " fugitive para :Gdiff [revision] y ver qué ha cambiado respecto a
    " anteriores commits
    Plug 'tpope/vim-fugitive'
    " Mejor sintaxis para markdown
    Plug 'gabrielelana/vim-markdown'
    " Markdown Preview para vista previa del render en el navegador
    Plug 'iamcco/markdown-preview.vim'
call plug#end()

" Fuente para soportar los símbolos de airlne
let g:airline_powerline_fonts = 1
"set guifont=Monaco\ for\ Powerline\ 10
set guifont=Menlo\ for\ Powerline\ 10

" Ctrl+P para... bueno, ctrlp. Je.
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Opciones para el colorscheme Sierra
"let g:sierra_Twilight = 1
"colorscheme sierra
"colorscheme kalisi
"colorscheme solarized
"colorscheme summerfruit256
" Recomendado por el tema night-owl
if (has("termguicolors"))
 set termguicolors
endif
colorscheme night-owl
"set background=dark
set background=light

" No quiero fichero .netrwhist (historial de rutas de red de algún plugin)
let g:netrw_dirhistmax = 0

" Paréntesis de colores sin tener que activarlo con RainbowToggle
let g:rainbow_active = 1

" Hacer que YCM sea compatible con UltiSnips usando supertab
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" Mejores teclas para UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Avisos de flake8 en el lateral también:
"let g:flake8_show_in_glutter = 1

" F9 para la lista de clases y a la izquierda
nnoremap <silent> <F9> :TagbarToggle<CR>
let g:tagbar_left = 1

" Color diferente a partir de la columna 80
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%>80v.\+/

" Sesiones en código Geotexan, que es donde lo necesito actualmente:
let g:session_directory = '~/Geotexan/src/ginn'
let g:session_default_to_last = 1
let g:session_autosave = 'yes'
let g:session_autoload = 'yes'

" Para que el Syntastic no proteste con código python3 parseándolo como
" python2
"let g:syntastic_python_checkers=['pylint']
"let g:syntastic_python_python_exec = 'python'
"let g:syntastic_python_pylint_exe = 'python -m pylint'
" Y para que el alto de la lista de errores sea menor
"let g:syntastic_loc_list_height=4

" Por si se cambia el vimrc **después** de haber creado la sesión, que ésta no
" siga usando valores antiguos.
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds

" Si hasta la CIA lo usa... Si no tengo permisos para guardar, lo hago como
" root
cmap w!! w !sudo tee % > /dev/null

" Con algunos ficheros de proyectos grandes se atasca demasiado el Syntastic
" al guardar, así que empiezo con Syntastic desactivado y con <F12> lo activo
" y desactivo:
"let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
"nnoremap <F12> :SyntasticCheck<CR> :SyntasticToggleMode<CR>

" Asynchronous Lint Engine
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
" Set this if you want to.
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.
let g:ale_keep_list_window_open = 1
let g:ale_list_window_size = 4
" Dejo el F12 para ALE (:ALELint para ejecutar manualmente, :ALEToggle para
" cambiar). Lo usaré para navegar por la QuickFix (:copen :cclose :cn :cp)
nnoremap <F12> :ALEToggleBuffer<CR>:redraw<CR>:sleep 100m<CR>:cwindow<CR>
nnoremap <A-F12> :ALELint<CR>
nnoremap <expr> <silent> <S-F12> (&diff ? "]c" : ":cprev\<CR>")
nnoremap <expr> <silent> <C-F12> (&diff ? "[c" : ":cnext\<CR>")
" Python3 por defecto de una vez, para flake y pylint
" let g:ale_linters = { 'python': ['flake8', ], }
let g:ale_python_flake8_executable = 'python3'   " or 'python' for Python 2
let g:ale_python_flake8_options = '-m flake8'
let g:ale_python_flake8_use_global = 1
let g:ale_python_pylint_executable = 'python3'
let g:ale_python_pylint_options = '-m pylint'
let g:ale_python_pylint_use_global = 1
" Python3 para isort también. Marcar en visual y Ctrl+I para reordenar
" automáticamente o ejecutar :Isort
let g:vim_isort_python_version = 'python3'
let g:vim_isort_map = '<C-i>'

" Cuando quiero ver un fichero con más espacio, en vez de hacer un :only
" para que el buffer ocupe toda la ventana, lo abro en una nueva pestaña
" y la cierro cuando termino:
nnoremap t. :tabedit %<cr>
nnoremap tc :tabclose<cr>

" Si intento abrir un fichero que ya está en otra instancia, pasa el foco a
" esa instancia:
:packadd! editexisting

" Si la ventana de quickfix está abierta al salir y es la única que queda,
" cerrarla automáticamente.
aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
aug END

" Ctrl+Alt+M para previsualizar, como en MarkdownHere
nmap <silent> <C-A-m> <Plug>MarkdownPreview        " for normal mode
imap <silent> <C-A-m> <Plug>MarkdownPreview        " for insert mode
" Para parar o cerrar la previsualización
"nmap <silent> <F9> <Plug>StopMarkdownPreview    " for normal mode
"imap <silent> <F9> <Plug>StopMarkdownPreview    " for insert mode
