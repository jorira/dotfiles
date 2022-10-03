#! /bin/sh

# Vim NeoBundle Setup
echo "Setup vim environment......."
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh installer.sh ~/.cache/dein

# Make backup
if [ -f ~/.vimrc ]; then
  mv ~/.vimrc ~/.vimrc.save
fi

ln -s `pwd`/vimrc ~/.vimrc

# when gvim
# ln -s `pwd`/gvimrc ~/.gvimrc

# for "deoplete" dependency.
pip install pynvim

vim +":call dein#install()" +:q
echo "Done. vim setup. "

