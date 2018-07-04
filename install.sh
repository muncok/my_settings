#!bin/bash

find bash -type f -exec cp {} ~/ \;
cp git/.gitconfig ~/
cp tmux/.tmux.conf ~/

cp -r vim/.vim_runtime ~/
sh ~/.vim_runtime/install_awesome_vimrc.sh

cp -r .autojump ~/

if [ -d ~/.vnc ]; then
   cp xtartup ~/.vnc
fi

bash

