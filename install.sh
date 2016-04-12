#!/bin/bash

cd
if [ -d ".vim" ]; then
    echo "Haciendo copia de seguridad del .vim actual a /tmp/dotvim.bak."
    mv .vim /tmp/dotvim.bak
fi
echo "Renombrando dotvim a .vim..."
mv dotvim .vim

echo "Enlazando .vim..."
ln -s ~/.vim/vimrc ~/.vimrc

echo "Creando directorios para temporales..."
mkdir ~/.vim/backup
mkdir ~/.vim/swap
mkdir ~/.vim/undo

echo "Instalando dependencias... (debian package names)"
sudo apt-get install flake8 python-autopep8 python-pep8 exuberant-ctags

echo "Instalando plugins..."
vim +PlugInstall +qall

echo "Compilando WCM"
cd ~/.vim/plugged/YouCompleteMe && ./install.py --all

echo "Fin"
