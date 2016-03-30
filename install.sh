#!/bin/bash

echo "Enlazando .vim..."
ln -s ~/.vim/vimrc ~/.vim

echo "Instalando plugins..."
vim +PlugInstall +qall

echo "Fin"
